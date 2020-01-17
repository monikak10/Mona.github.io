package com.cognizant.truyum.dao;

import java.sql.SQLException;
import java.util.List;
import com.cognizant.truyum.model.MenuItem;

public interface MenuItemDao {
	public List<MenuItem> getMenuItemListAdmin() throws SQLException;

	public List<MenuItem> getMenuItemListCustomer() throws SQLException;

	public void modifyMenuItem(MenuItem menuItem) throws SQLException;

	public MenuItem getMenuItem(long menuItemId);

}
