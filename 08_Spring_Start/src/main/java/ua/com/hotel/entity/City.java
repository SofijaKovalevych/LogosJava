package ua.com.hotel.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
//@NamedQueries({
//	@NamedQuery(name = "findAllCitys", query = "select a from City a"),
//	@NamedQuery(name = "findOneCity", query = "select a from City a.name =:param")
//})

//Назва міста в якому знаходиться готель
@Entity
@Table(name = "city")
public class City {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column
	private String name;
	@OneToMany(mappedBy = "city")
	private List<HotelName> hotelname = new ArrayList<>();

	public City(int id, String name, List<HotelName> hotelname) {
		super();
		this.id = id;
		this.name = name;
		this.hotelname = hotelname;
	}

	public City(String name, List<HotelName> hotelname) {
		super();
		this.name = name;
		this.hotelname = hotelname;
	}

	public City(String name) {
		super();
		this.name = name;
	}

	public City() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<HotelName> getHotelname() {
		return hotelname;
	}

	public void setHotelname(List<HotelName> hotelname) {
		this.hotelname = hotelname;
	}

}
