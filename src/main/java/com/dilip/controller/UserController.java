package com.dilip.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dilip.dao.UserDAO;
import com.dilip.model.User;

@Controller
@RequestMapping("/users")
public class UserController {

	@GetMapping("/findall")
	public String findAll(ModelMap model) {

		UserDAO dao = new UserDAO();
		try {
			List<User> userList = dao.findAll();
			model.addAttribute("USERLIST", userList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "listusers";
	}

	@GetMapping("/edit")
	public String findById(@RequestParam("id") String id, ModelMap model) {
		UserDAO dao = new UserDAO();
		try {
			User user = dao.findById(Integer.parseInt(id));
			model.addAttribute("USER", user);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "updateuser";
	}

	@PostMapping("/update")
	public String update(@RequestParam("id") String id, @RequestParam("name") String name,
			@RequestParam("email") String email, @RequestParam("password") String password, ModelMap model) {
		User user = new User();
		user.setId(Integer.parseInt(id));
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		UserDAO dao = new UserDAO();
		try {
			dao.update(user);
			List<User> userList = dao.findAll();
			model.addAttribute("USERLIST", userList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "listusers";
	}

	@PostMapping("/save")
	public String save(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("password") String password, ModelMap model) {
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		UserDAO dao = new UserDAO();
		try {
			dao.save(user);
			List<User> userList = dao.findAll();
			model.addAttribute("USERLIST", userList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "listusers";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("id") String id, ModelMap model) {
		UserDAO dao = new UserDAO();
		try {
			dao.delete(Integer.parseInt(id));
			List<User> userList = dao.findAll();
			model.addAttribute("USERLIST", userList);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "listusers";
	}

}
