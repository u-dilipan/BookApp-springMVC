package com.dilip.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dilip.dao.BookDAO;
import com.dilip.model.Book;

@Controller
@RequestMapping("/books")
public class BookController {

	@GetMapping
	public String findAll(ModelMap model) {

		BookDAO dao = new BookDAO();
		try {
			List<Book> bookList = dao.findAll();
			model.addAttribute("BOOKLIST", bookList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "listbooks";
	}

	@GetMapping("/edit")
	public String findById(@RequestParam("id") String id, ModelMap model) {
		BookDAO dao = new BookDAO();
		try {
			Book book = dao.findById(Integer.parseInt(id));
			model.addAttribute("BOOK", book);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "updatebook";
	}

	@PostMapping("/update")
	public String update(@RequestParam("id") String id, @RequestParam("name") String name,
			@RequestParam("author_name") String authorName, @RequestParam("price") String price, ModelMap model) {
		Book book = new Book();
		book.setId(Integer.parseInt(id));
		book.setName(name);
		book.setAuthorName(authorName);
		book.setPrice(Float.parseFloat(price));
		BookDAO dao = new BookDAO();
		try {
			dao.update(book);
			List<Book> bookList = dao.findAll();
			model.addAttribute("BOOKLIST", bookList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "listbooks";
	}

	@PostMapping("/save")
	public String save(@RequestParam("name") String name, @RequestParam("author_name") String authorName,
			@RequestParam("price") String price, ModelMap model) {
		Book book = new Book();
		book.setName(name);
		book.setAuthorName(authorName);
		book.setPrice(Float.parseFloat(price));
		BookDAO dao = new BookDAO();
		try {
			dao.save(book);
			List<Book> bookList = dao.findAll();
			model.addAttribute("BOOKLIST", bookList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "listbooks";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("id") String id, ModelMap model) {
		BookDAO dao = new BookDAO();
		try {
			dao.delete(Integer.parseInt(id));
			List<Book> bookList = dao.findAll();
			model.addAttribute("BOOKLIST", bookList);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "listbooks";
	}

}
