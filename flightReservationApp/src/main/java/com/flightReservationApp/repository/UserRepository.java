package com.flightReservationApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.flightReservationApp.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String emailid);

}
