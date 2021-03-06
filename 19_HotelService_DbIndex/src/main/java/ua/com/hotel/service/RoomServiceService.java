package ua.com.hotel.service;

import java.util.List;

import ua.com.hotel.dto.form.RoomServiceForm;
import ua.com.hotel.entity.HotelName;
import ua.com.hotel.entity.RoomService;
import ua.com.hotel.entity.TypeOfBathRoom;
import ua.com.hotel.entity.TypeOfRoom;

public interface RoomServiceService {
	
	void save(RoomServiceForm RoomService);

	List<RoomService> findAll();

	RoomService findOne(Long id);
	
	RoomServiceForm finForm(Long id);

	void delete(Long id);
	
	List<RoomService> findByHotelNameId(Long id);

	RoomService findUnique(String price, String room, String roomNumber, HotelName hotelName,
			TypeOfBathRoom typeOfBathRoom, TypeOfRoom typeOfRoom);
}
