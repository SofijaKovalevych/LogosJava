package ua.com.hotel.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import ua.com.hotel.entity.RentDate;

public interface RentDateDao extends JpaRepository<RentDate, Long>, JpaSpecificationExecutor<RentDate>{
	
//	@Query("SELECT a FROM RentDate a LEFT JOIN FETCH a.roomService")
//	List <RentDate> findAll();
	
	@Query("SELECT a FROM RentDate a LEFT JOIN FETCH a.roomService")
	List <RentDate> findAll();
	@Override
	@Query("SELECT a FROM RentDate a LEFT JOIN FETCH a.roomService WHERE a.id=?1")
	RentDate findOne(Long id);
//	@Query("SELECT a FROM RentDate a LEFT JOIN FETCH a.roomService a LEFT JOIN FETCH a.hotelName WHERE a.id=?1")
//	RentDate findOne(Long id);
//	
//	@Override
//	@Query(value = "SELECT a FROM RentDate a LEFT JOIN FETCH a.roomService", countQuery = "SELECT count(a.id) FROM RentDate a")
//	Page<RentDate> findAll(Pageable pageable);
	 
	@Override
	@Query(value = "SELECT a FROM RentDate a LEFT JOIN FETCH a.roomService", countQuery = "SELECT count(a.id) FROM RentDate a")
	Page<RentDate> findAll(Pageable pageable);
//	@Override
//	@Query(value = "SELECT a FROM RentDate a LEFT JOIN FETCH a.roomService a LEFT JOIN FETCH a.hotelName", countQuery = "SELECT count(a.id) FROM RentDate a")
//	Page<RentDate> findAll(Pageable pageable);
	
}
