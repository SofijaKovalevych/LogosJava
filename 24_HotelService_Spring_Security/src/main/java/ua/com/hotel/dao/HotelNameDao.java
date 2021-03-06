package ua.com.hotel.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import ua.com.hotel.entity.HotelName;

public interface HotelNameDao extends JpaRepository<HotelName, Long>, JpaSpecificationExecutor<HotelName> {

	HotelName findByName(String name);

	@Query("SELECT i FROM HotelName i WHERE i.city.id = ?1")
	List<HotelName> findByCityId(Long id);

	@Override
	@Query("SELECT a FROM HotelName a LEFT JOIN FETCH a.city")
	List<HotelName> findAll();

	@Override
	@Query("SELECT a FROM HotelName a LEFT JOIN FETCH a.city WHERE a.id=?1")
	HotelName findOne(Long id);

	@Query("SELECT a FROM HotelName a WHERE a.name=?1 and a.city.id=?2")
	HotelName findUnique(String name, Long cityId);

	@Override
	@Query(value = "SELECT a FROM HotelName a LEFT JOIN FETCH a.city", countQuery = "SELECT count(a.id) FROM HotelName a")
	Page<HotelName> findAll(Pageable pageable);
}
