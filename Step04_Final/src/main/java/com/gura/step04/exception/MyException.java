package com.gura.step04.exception;
/*
 *  사용자 정의 Exception
 */
public class MyException extends Exception{
	// 맴버필드
	private String message;
	
	// 생성자
	public MyException(String message){
		this.message=message;
	}
	
	// set ctrl s
	public void setMessage(String message) {
		this.message = message;
	}
	
	// get ctrl s
	@Override
	public String getMessage() {
		
		return message;
	}
}
