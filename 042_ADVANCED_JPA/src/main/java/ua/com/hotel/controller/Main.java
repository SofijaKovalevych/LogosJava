package ua.com.hotel.controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Main {
	public static void main(String[] args) {
		final EntityManagerFactory factory = Persistence
				.createEntityManagerFactory("primary");
		final EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		em.getTransaction().commit();
		em.close();
		factory.close();

	}
}
