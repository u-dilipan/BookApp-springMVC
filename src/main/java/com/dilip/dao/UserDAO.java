package com.dilip.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.dilip.model.User;
import com.dilip.util.ConnectionUtil;

public class UserDAO {
	public void save(User user) throws Exception {
		Connection con = ConnectionUtil.getConnection();
		String sql = "insert into users(name,email,password) values (?,?,?)";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, user.getName());
		pst.setString(2, user.getEmail());
		pst.setString(3, user.getPassword());
		int row = pst.executeUpdate();
		System.out.println(row + "User added successfully");
	}

	public void update(User user) throws Exception {
		Connection con = ConnectionUtil.getConnection();
		String sql = "update users set name=?,email=?,password=? where id=?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, user.getName());
		pst.setString(2, user.getEmail());
		pst.setString(3, user.getPassword());
		pst.setInt(4, user.getId());
		int row = pst.executeUpdate();
		System.out.println(row + "User updated successfully");
	}

	public void delete(int id) throws Exception {
		Connection con = ConnectionUtil.getConnection();
		String sql = "delete from users where id=?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, id);
		int row = pst.executeUpdate();
		System.out.println(row + "User deleted successfully");
	}

	public User findById(int id) throws Exception {
		Connection con = ConnectionUtil.getConnection();
		String sql = "select id,name,email,password,created_date from users where id=?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1, id);
		ResultSet rs = pst.executeQuery();
		User user = null;
		if (rs.next()) {
			String name = rs.getString("name");
			String email = rs.getString("email");
			String password = rs.getString("password");
			LocalDateTime createdDate = rs.getTimestamp("created_date").toLocalDateTime();
			user=new User();
			user.setId(id);
			user.setName(name);
			user.setEmail(email);
			user.setPassword(password);
			user.setCreated_date(createdDate);
		}
		return user;
	}

	public List<User> findAll() throws Exception {
		Connection con = ConnectionUtil.getConnection();
		String sql = "select id,name,email,password,created_date from users";
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		List<User> userList = new ArrayList<User>();
		while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String email = rs.getString("email");
			String password = rs.getString("password");
			LocalDateTime createdDate = rs.getTimestamp("created_date").toLocalDateTime();
			User user=new User();
			user.setId(id);
			user.setName(name);
			user.setEmail(email);
			user.setPassword(password);
			user.setCreated_date(createdDate);
			userList.add(user);
		}
		return userList;
	}
}
