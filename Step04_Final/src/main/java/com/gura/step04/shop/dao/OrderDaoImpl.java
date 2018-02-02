package com.gura.step04.shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.step04.exception.NoDeliveryException;
import com.gura.step04.shop.dto.OrderDto;

@Repository
public class OrderDaoImpl implements OrderDao {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void addOrder(OrderDto dto) {
		session.insert("shop.addOrder",dto);
		// 테스트로 예외 발생 시키기 try처리 안해도됨
		// 무조건 예외 발생시킨다      // 조건부로 
		throw new NoDeliveryException("눈이와서 배송을 못해요!");
		// data_access.jsp <p>예외 정보 : ${exception.message }</p> 들어감
	}

}
