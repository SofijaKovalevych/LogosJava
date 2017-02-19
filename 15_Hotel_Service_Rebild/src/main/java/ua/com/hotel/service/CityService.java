package ua.com.hotel.service;

import java.util.List;

import ua.com.hotel.entity.City;

public interface CityService {
	void save(City city);

	List<City> findAll();

	City findOne(Long id);

	void delete(Long id);

	City findByName(String name);
}
