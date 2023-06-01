package com.laundry.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.laundry.entity.LaundryRegistrationEntity;

@Repository
public interface LaundryRegistrationRepository extends JpaRepository<LaundryRegistrationEntity, Integer> {

	List<LaundryRegistrationEntity> findByDeletedFlag(int i);

	List<LaundryRegistrationEntity> findByDeliverStatus(int i);

}
