package com.laundry.service;

import java.util.List;

import com.laundry.entity.LaundryRegistrationEntity;
import com.laundry.entity.Price;
import com.laundry.entity.UserEntity;

public interface LaundryService {

	String saveRegister(UserEntity userEntity);

	String loginUser(UserEntity usrEntity);

	Price getPrice();

	String saveRequest(LaundryRegistrationEntity laundryRegistrationEntity);

	List<LaundryRegistrationEntity> getRequest();

	List<LaundryRegistrationEntity> getAdminList();

}
