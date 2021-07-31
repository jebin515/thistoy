package com.base.controller;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/login/*")
@RequiredArgsConstructor
@Log4j
public class LoginController {
	
	private final UserService userService;
	
//	@RequestMapping(value = "/home", method = RequestMethod.GET)
//	public String home(Locale locale, Model model,HttpSession session) {
//		// 세션에 있는 정보를 담아준다.
//		model.addAttribute("userType", (String)session.getAttribute("userType") );
//		return "/home";
//	}
	
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
			session.setAttribute("authInfo", authInfo);
		} catch (IdPasswordNotMatchingException e) {
			return "/login/loginfail";
		}
		return "/main";
	} //기존 로그인 
	
	
//	@GetMapping("/logincheck")
//	public void loginCheck() {
//		System.out.println("로그인 성공");
//	}
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
	
	
	@GetMapping("/navercall")
	public @ResponseBody String naverCallback(String code) { //@ResponseBody  ) data를 리턴해주는 컨트롤러 함수
		System.out.println("네이버 콜백 페이지 띄움");
//		// CSRF 방지를 위한 상태 토큰 검증 검증
//		// 세션 또는 별도의 저장 공간에 저장된 상태 토큰과 콜백으로 전달받은 state 파라미터의 값이 일치해야 함
//		// 콜백 응답에서 state 파라미터의 값을 가져옴
//		String state = request.queryParams(“state”);
//		// 세션 또는 별도의 저장 공간에서 상태 토큰을 가져옴
//		String storedState = request.session().attribute(“state”);
//		if( !state.euals( storedState ) ) {
//		    return RESPONSE_UNAUTHORIZED; //401 unauthorized
//		} else {
//		    Return RESPONSE_SUCCESS; //200 success
//		}
		return "네이버인증완료naver";
	}
	
	@GetMapping("/kakaocallback")
	public @ResponseBody String kakaoCallback(String code,Model model) { //@ResponseBody  ) data를 리턴해주는 컨트롤러 함수
		System.out.println("카카오로그인 페이지GET 띄움");
//		https://blog.naver.com/hj_kim97/222295259904 RestTemplate 사용한 api 사용 예시
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
		
//		params.add("grant_type", "authorization_code");  // 값들을 변수로 바꿔서 넣는게 좋음
//		params.add("client_id", "46578e2a852ca11289c2da8422acc9ca");
//		params.add("redirect_uri", "http://localhost:9090/login/kakaocallback");
//		params.add("code", code);
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
		
		
		System.out.println("프로필 정보 : "+response2.getBody());
		System.out.println(response2.getHeaders());
		KakaoProfile kakaoProfile = null;
		ObjectMapper objectMapper2 =new ObjectMapper(); //json 데이터를  오브젝트에 담는다
		try {
			kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
//		user오브젝트 username password email
		System.out.println("카카오아이디(번호) : "+kakaoProfile.getId());
		System.out.println("카카오이메일 : "+kakaoProfile.getKakao_account().getEmail());
		System.out.println("DB유저네임 : "+ kakaoProfile.getKakao_account().getEmail()+"_"+kakaoProfile.getId());
		System.out.println("DB이메일 : "+kakaoProfile.getKakao_account().getEmail());
		System.out.println("DB 닉네임 : "+kakaoProfile.properties.getNickname());
		
//		userService.register(user)
//		model.addAttribute("authInfo2",kakaoProfile);
		
		return response2.getBody();
	}

}// 클래스 종료
