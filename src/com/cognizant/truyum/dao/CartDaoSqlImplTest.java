package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoSqlImplTest {
	public static void main(String[] args) throws CartEmptyException {
		testAllCartItem();
		testAddCartItem();
		//testAllCartItem();
		testRemoveCartItem();
		//testAllCartItem();
	}

	public static void testAddCartItem() throws CartEmptyException {
		System.out.println("User Added Cart List for CheckOut :");
		CartDao cartDao = new CartDaoSqlImpl();
		cartDao.addCartItem(1, 1);
		cartDao.addCartItem(1, 3);
		
		List<MenuItem> menuItemListCustomer = cartDao.getAllCartItems(1);
		for (MenuItem menuItem : menuItemListCustomer) {
			System.out.println(menuItem);
		}
	}

	public static void testRemoveCartItem() throws CartEmptyException {
		System.out.println("Item List for Customer after Remove :");
		CartDao cartDao = new CartDaoSqlImpl();
		try {
			cartDao.removeCartItem(1, 1);
			cartDao.removeCartItem(2,4);

			List<MenuItem> menuItemListCustomer = cartDao.getAllCartItems(1);
			for (MenuItem menuItem : menuItemListCustomer) {
				System.out.println(menuItem);
			}
		} catch (CartEmptyException e) {
			System.out.println(e.getMessage());
		}
	}

	public static void testAllCartItem() throws CartEmptyException {
		System.out.println("All list of cart :");
		CartDao cartDao = new CartDaoSqlImpl();
		List<MenuItem> menuItemListCustomer = cartDao.getAllCartItems(1);
		
		for (MenuItem menuItem : menuItemListCustomer) {
			System.out.println(menuItem);
			
		}
	}
}
