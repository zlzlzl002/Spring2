package com.gura.step04.shop.service;

import org.springframework.web.servlet.ModelAndView;

import com.gura.step04.shop.dto.ShopDto;

public interface ShopService {
	public ModelAndView getList(); // 상품 목록 출력
	public ModelAndView buy(ShopDto dto); // 상품 구입
}
