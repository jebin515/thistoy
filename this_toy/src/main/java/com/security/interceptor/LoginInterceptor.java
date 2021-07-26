//package com.security.interceptor;
//
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import javax.validation.Valid;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//
//import com.base.service.user.UserService;
//import com.base.session.AuthInfo;
//import com.base.session.LoginCommand;
//
//import lombok.RequiredArgsConstructor;
//
//
//public class LoginInterceptor extends HandlerInterceptorAdapter{
//	
//	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
//	
//	/**
//	 * Controller가 호출되기 전 수행
//	 */
//	@Override
//	public boolean preHandle(
//			HttpServletRequest  request, 
//			HttpServletResponse response, 
//			Object handler
//			)
//	throws Exception {
//		logger.info("Interceptor: preHandle");
//		HttpSession httpSession = request.getSession();
//		logger.info("세션에 정보가 있나요?:{}" , httpSession.getAttributeNames().hasMoreElements() );
//		try {
//			if ( httpSession.getAttributeNames().hasMoreElements() ) {
//				logger.info("세션 정보 삭제 처리함");
//				httpSession.invalidate();
//			} else {
//				logger.info("세션 정보가 없음");
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		httpSession = null;
//		return true;
//	}
//
//	/**
//	 *  Controller가 완료된 이후에 수행
//	 */
//	@Override
//	public void postHandle(
//			HttpServletRequest  request, 
//			HttpServletResponse response, 
//			Object handler, 
//			ModelAndView modelAndView)
//	throws Exception {
//		
//		logger.info("Interceptor: postHandle");
//		HttpSession httpSession = request.getSession();
//		try {
//			// 전달된 정보를 보고 세션을 부여한다.
//			logger.info("세션 부여 모델맵 전 부분");
//			ModelMap modelMap = modelAndView.getModelMap();
//			String userType = (String)modelMap.get("authInfo");
//			logger.info("세션 부여 모델맵 후 부분");
//			if ( userType.isEmpty()  ) {
//				logger.info("userType 이 없습니다.");
//				httpSession = null;
//			} else {
//				logger.info("userType 이 존재 합니다.userType:{}",userType);
//				// 세션에 값을 부여합니다.
//				httpSession.setAttribute("userType", userType);
//				httpSession = null;
//				logger.info("세션 할당 종료");
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//	/**
//	 * Controller 수행 후 view단 작업까지 완료 된 후 호출 
//	 */
//	@Override
//	public void afterCompletion(
//			HttpServletRequest  request, 
//			HttpServletResponse response, 
//			Object handler, Exception ex)
//	throws Exception {
//		logger.info("Interceptor: afterCompletion");
//		//super.afterCompletion(request, response, handler, ex);
//	}
//	
//} // end class