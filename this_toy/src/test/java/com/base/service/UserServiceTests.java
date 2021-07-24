package com.base.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.zerock.service.BoardServiceTests;

import com.base.entity.UserVO;
import com.base.service.user.UserService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserServiceTests {
	
	@Autowired
	private UserService service;
	
	@Test
	public void testLogin() {
		service.login().forEach(uservo -> log.info(uservo));
	}
	
	@Test
	public void testRegister() {
		log.info("serviceTest Register-----------------");
		UserVO vo = new UserVO();
		vo.setUserId("test");
	}
	
	
}
