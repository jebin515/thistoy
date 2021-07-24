package com.base.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.base.entity.UserVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserMappertests {
	
	@Autowired
	private UserMapper usermapper;
	
	@Test
	public void testLogin() {
		log.info("-------------Login---------------");
		usermapper.login();
//		usermapper.login().forEach(uservo -> log.info(uservo));
	}
	
	@Test
	public void testRegister() {
		log.info("register -=-=-=-=-=-=-=-=-=-");
		UserVO vo = new UserVO();
		vo.setUserId("대문자 id");
		vo.setUserPasswd("XML PW");
		vo.setUserName("XML ");
		vo.setUserEmail("XML@email.com");
		vo.setUserTel("010-1234-1234");
		vo.setUserAddress("대문자 테스트");
		
		usermapper.register(vo);
		log.info("----------------------------------------");
		
	}
	
}
