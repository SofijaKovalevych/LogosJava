package ua.com.hotel.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.com.hotel.entity.User;

public interface UserDao extends JpaRepository<User, Integer>{
	User findByName (String name);
}
