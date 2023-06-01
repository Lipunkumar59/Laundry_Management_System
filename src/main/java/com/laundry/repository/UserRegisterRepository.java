package com.laundry.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.laundry.entity.UserEntity;

@Repository
public interface UserRegisterRepository extends JpaRepository<UserEntity, Integer> {

	UserEntity findByMobileNo(String mobileNo);

}
