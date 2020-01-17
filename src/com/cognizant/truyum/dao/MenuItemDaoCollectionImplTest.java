package com.cognizant.truyum.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {
	public static void main(String args[]) {
		try {
			System.out.println("Admin menu item list");
			testGetMenuItemListAdmin();
			System.out.println("Customer menu item list");
			testGetMenuItemListCustomer();
			testModifyMenuItem();
			System.out.println("Modified menu item list");
			testGetMenuItemListAdmin();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	private static void testModifyMenuItem() throws ParseException, SQLException {
		MenuItem m = new MenuItem(1, "Alo Paratha",60.00f, false, DateUtil.convertToDate("16/02/2012"), "Main Course",
				true);
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		menuItemDao.modifyMenuItem(m);

	}

	public static void testGetMenuItemListAdmin() throws ParseException, SQLException {

		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListAdmin();
		for (MenuItem x : menuItemList) {
			System.out.println(x);
		}

	}

	public static void testGetMenuItemListCustomer() throws ParseException, SQLException {
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListCustomer();
		for (MenuItem x : menuItemList) {
			System.out.println(x);
		}
	}
}
