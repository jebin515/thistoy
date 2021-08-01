package com.base.controller;

import java.io.IOException;
import java.util.Random;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.base.entity.UserVO;
import com.base.service.user.UserService;
import com.base.session.AuthInfo;
import com.base.session.IdPasswordNotMatchingException;
import com.base.session.KakaoProfile;
import com.base.session.LoginCommand;
import com.base.session.OAuthToken;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/login/*")
@RequiredArgsConstructor
@Log4j
public class LoginController {
	
	private final UserService userService;
	
	
	@GetMapping("/login")
	public String loginGET() {
		System.out.println("로그인 페이지");
		return "/login/login";
	}
	//기존 로그인 메소드
	@RequestMapping(value = "/loginsuccess", method = RequestMethod.POST)
	public String loginSuccess(@Valid LoginCommand loginCommand, BindingResult bindingResult,
			HttpSession session,Model model) throws Exception {
		
		if (bindingResult.hasErrors()) {
			return "/login/login";
		}
		try {
			AuthInfo authInfo = userService.loginAuth(loginCommand);
			
			String sessionId = authInfo.getUserId();
//			System.out.println("로그커맨드"+loginCommand.getUserId());
//			session.setAttribute("userId", authInfo);
			session.setAttribute("userId", sessionId);

		} catch (IdPasswordNotMatchingException e) {
			return "/login/loginfail";
		}
		return "redirect:/main";
	} //기존 로그인 
	
	
	@RequestMapping("/navercall")
	public String navercall(HttpSession session) {
		session.setAttribute("userId","네이버49482307");
		
		return "redirect:/main";
	}
	
	@GetMapping("/loginsuccess")
	public void loginsuccess() {
		System.out.println("로그인 GET 성공");
	}

	@GetMapping("/logout")
	public String logoutGET(HttpSession session) {
		session.invalidate();
		System.out.println("로그아웃 GET");
		return "redirect:/main";
	}

//	public String getAuthorizationUrl(HttpSession session) {
//        /* 세션 유효성 검증을 위하여 난수를 생성 */
//        String state = generateRandomString();
//        /* 생성한 난수 값을 session에 저장 */
//        setSession(session,state);
//        /* Scribe에서 제공하는 인증 URL 생성 기능을 이용하여 네아로 인증 URL 생성 */
//        OAuth20Service oauthService = new ServiceBuilder()
//        .apiKey(CLIENT_ID)
//        .apiSecret(CLIENT_SECRET)
//        .callback(REDIRECT_URI)
//        .state(state) //앞서 생성한 난수값을 인증 URL생성시 사용함
//        .build(NaverLoginApi.instance());
//        
//        return oauthService.getAuthorizationUrl();
//    }
//    /* 네이버아이디로 Callback 처리 및 AccessToken 획득 Method */
//	private  String CLIENT_ID = "5sh4TrG6DyRbb_FeQOmr";
//    private  String CLIENT_SECRET = "2sdgFZvahW";
//    private  String REDIRECT_URI = "http://localhost:8080/callback";
//    private  String SESSION_STATE = "oauth_state";
//    /* 프로필 조회 API URL */
//    private String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
//    
//    public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{
//    /* Callback으로 전달받은 세선검증용 난수값과 세션에 저장되어있는 값이 일치하는지 확인 */
//    String sessionState = getSession(session);
//        if(StringUtils.pathEquals(sessionState, state)){
//            OAuth20Service oauthService = new ServiceBuilder()
//            .apiKey(CLIENT_ID)
//            .apiSecret(CLIENT_SECRET)
//            .callback(REDIRECT_URI)
//            .state(state)
//            .build(NaverLoginApi.instance());
//            /* Scribe에서 제공하는 AccessToken 획득 기능으로 네아로 Access Token을 획득 */
//            OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
//            return accessToken;
//        }
//    return null;
//    }
//    /* 세션 유효성 검증을 위한 난수 생성기 */
//    private String generateRandomString() {
//        return UUID.randomUUID().toString();
//    }
//    /* http session에 데이터 저장 */
//    private void setSession(HttpSession session,String state){
//        session.setAttribute(SESSION_STATE, state);
//    }
//    /* http session에서 데이터 가져오기 */
//    private String getSession(HttpSession session){
//        return (String) session.getAttribute(SESSION_STATE);
//    }
//    /* Access Token을 이용하여 네이버 사용자 프로필 API를 호출 */
//    public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException{
//        OAuth20Service oauthService =new ServiceBuilder()
//        .apiKey(CLIENT_ID)
//        .apiSecret(CLIENT_SECRET)
//        .callback(REDIRECT_URI).build(NaverLoginApi.instance());
//        OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
//        oauthService.signRequest(oauthToken, request);
//        Response response = request.send();
//        return response.getBody();
//    }
	
	@RequestMapping("/kakaocallback")
	public @ResponseBody String kakaoCallback(String code,HttpSession session,UserVO vo) { //@ResponseBody  ) data를 리턴해주는 컨트롤러 함수
		String grant_type = "authorization_code";
		String client_id = "46578e2a852ca11289c2da8422acc9ca";
		String redirect_uri = "http://localhost:9090/login/kakaocallback";
//		post방식으로 key=value 데이터 요청해야함 (카카오로)
//		 예전자바에선 HttpsURLConnection url =new Http~ 로쓰기도함 (불편)  , Retrofit2 라이브러리, OkHttp 라이브러리 등등 있다
		//http요청 편하게할수있는 라이브러리
		RestTemplate rt = new RestTemplate();   
//		HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8"); //헤더에 컨텐트타입을 담는다는 의미는  내가 전송할 http body 데이터가 key value 데이터라고 알려줌
//		HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", grant_type);  //변수로 넣어봄 안되면 밑에 코드 사용해보기
		params.add("client_id", client_id);
		params.add("redirect_uri", redirect_uri);
		params.add("code", code); //코드는 위에 get으로 받은 그거
		
		
		
		//HttpHeader 와 HttpBody를 하나의 오브젝트에 담는다
//		이유는 => exchange함수가 HttpEntity 오브젝트를 넣게 돼있어서!
		HttpEntity<MultiValueMap<String,String>> kakaoTokenRequest  // kakao~ 변수를 http 바디와 헤더값을 가진 entity만듬
		= new HttpEntity<>(params,headers);
//		Http 요청 - Post방식 , response 변수 응답받음
		ResponseEntity<String> response = rt.exchange(  //ResponseEntity response = rt.exchange( 이었던것을 제네릭으로바꿈
				"https://kauth.kakao.com/oauth/token", //api 요청 URL
				HttpMethod.POST,    							//요청 메소드
				kakaoTokenRequest,								//바디(액세스토큰등)와 헤더에 들어갈 값
				String.class											//응답받을 타입 => response에 응답이 String
				);
		
		OAuthToken oauthToken = null;
		ObjectMapper objectMapper =new ObjectMapper(); //json 데이터를  오브젝트에 담는다
		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		System.out.println("카카오액세스토큰 확인 : "+oauthToken.getAccess_token());
		
		RestTemplate rt2 = new RestTemplate();   
//		HttpHeader 오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer "+oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8"); //헤더에 컨텐트타입을 담는다는 의미는  내가 전송할 http body 데이터가 key value 데이터라고 알려줌

		HttpEntity<MultiValueMap<String,String>> kakaoProfileRequest2  // kakao~ 변수를 http 바디와 헤더값을 가진 entity만듬
		= new HttpEntity<>(headers2); //헤더만
		ResponseEntity<String> response2 = rt2.exchange(  //ResponseEntity response = rt.exchange( 이었던것을 제네릭으로바꿈
				"https://kapi.kakao.com/v2/user/me", //api 요청 URL
				HttpMethod.POST,    							//요청 메소드
				kakaoProfileRequest2,								//바디(액세스토큰등)와 헤더에 들어갈 값
				String.class											//응답받을 타입 => response에 응답이 String
				);
		KakaoProfile kakaoProfile = null;
		ObjectMapper objectMapper2 =new ObjectMapper(); //json 데이터를  오브젝트에 담는다
		try {
			kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		vo.setUserId (String.valueOf(kakaoProfile.getId()));
		vo.setUserEmail(kakaoProfile.kakao_account.getEmail());
		System.out.println(vo);
		userService.insertKakaoId(vo);
		
		//세션 부여
		session.setAttribute("userId", "카카오유저"+kakaoProfile.getId());

		return "<script>\r\n"
				+ "        self.location = \"/main\";\r\n"
				+ " </script>";
	}
	
	@RequestMapping("/findpw")
	public void registerPOST() throws Exception {
		
	}
	
	private final JavaMailSender mailSender;
	@GetMapping("/findpassword")
	@ResponseBody
	public String findPassword(String semail) throws Exception {
		

		System.out.println("비번찾기 메일보냄페이지");
		System.out.println("이메일: " + semail);
		Random random = new Random();
		int num = random.nextInt(8999)+1000;
		System.out.println("인증번호 :" + num);
		
		
		String setFrom = "gihadaim@gmail.com";
		String toMail = semail;
		String title = "디스토이 비밀번호찾기 인증번호입니다.";
		String content = "안녕하세요! 인증번호는     "+num+"     입니다.";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}
		String Checkcode = Integer.toString(num);
		
		return Checkcode;
	}
	
	
	
	
	
	
	
}// 클래스 종료
