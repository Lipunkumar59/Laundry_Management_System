package com.laundry.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.laundry.entity.LaundryRegistrationEntity;
import com.laundry.entity.Price;
import com.laundry.entity.RoleEntity;
import com.laundry.entity.UserEntity;
import com.laundry.repository.LaundryRegistrationRepository;
import com.laundry.repository.PriceRepository;
import com.laundry.repository.UserRegisterRepository;

@Service
public class LaundryServiceImpl implements LaundryService {
	@Autowired
	private UserRegisterRepository userRegisterRepository;
	
	@Autowired
	private PriceRepository priceRepository;
	
	@Autowired
	private LaundryRegistrationRepository laundryRepository;

	@Autowired
	HttpSession session;
	
	@Override
	public String saveRegister(UserEntity userEntity) {
		String message="";
		try {
			UserEntity test = userRegisterRepository.findByMobileNo(userEntity.getMobileNo());
			if(test == null) {
				RoleEntity role = new RoleEntity();
				role.setRoleId(2);
				userEntity.setRole(role);
				userRegisterRepository.save(userEntity);
				message="Registration Successfully";
			}
			else {
				message = "User Already Register";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}

	@Override
	public String loginUser(UserEntity usrEntity) {
		String message="";
		try {
			UserEntity user = userRegisterRepository.findByMobileNo(usrEntity.getMobileNo());
			if(user != null) {
				
				if(user.getMobileNo().equals(usrEntity.getMobileNo()) && user.getPassword().equals(usrEntity.getPassword())) {
					message="Success";
				}else {
					message="Enter Correct Password";
				}
			}
			else {
				message="Enter Correct Mobile";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}

	@Override
	public Price getPrice() {
		 return priceRepository.findByPriceId(1);
	}

	@Override
	public String saveRequest(LaundryRegistrationEntity laundry) {
		String message = "";
		try {
			String mobile = (String) session.getAttribute("user");
			UserEntity user = userRegisterRepository.findByMobileNo(mobile);
			Price priceDetail =  priceRepository.findByPriceId(1);
			
			Double totalPrice = ((laundry.getButtonWare()*priceDetail.getButtomWarePrice())+(laundry.getTopWare()*priceDetail.getTopWarePrice())+(laundry.getWoolenCloth()*priceDetail.getWinterWirePrice())); 
			laundry.setTotalPrice(totalPrice);
			laundry.setDeletedFlag(0);
			laundry.setUserId(user);
			laundry.setDeliverStatus(1);
			laundryRepository.save(laundry);
			message = "Request Saved Successfully";
		} catch (Exception e) {
			message = "Error";
			e.printStackTrace();
		}
		return message;
	}

	@Override
	public List<LaundryRegistrationEntity> getRequest() {
		List<LaundryRegistrationEntity> requestList = null;
		try {
			requestList = new ArrayList<>();
			requestList = laundryRepository.findByDeletedFlag(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return requestList;
	}

	@Override
	public List<LaundryRegistrationEntity> getAdminList() {
		List<LaundryRegistrationEntity> findByDeliverStatus = laundryRepository.findByDeliverStatus(1);
		return findByDeliverStatus;
	}

}
