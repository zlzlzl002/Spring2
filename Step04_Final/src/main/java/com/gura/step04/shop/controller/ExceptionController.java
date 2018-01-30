package com.gura.step04.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.gura.step04.exception.MyException;

/*
 *  예외를 처리하는 컨트롤러
 */
@Controller
public class ExceptionController {
	// MyException type 의 예외가 발생했을때 호출되는 메소드
	@ExceptionHandler(MyException.class)
	public ModelAndView handleMyException(MyException me){
		ModelAndView mView= new ModelAndView();
		mView.addObject("exception",me);
		mView.setViewName("error/my");
		return mView;	
	}
}
