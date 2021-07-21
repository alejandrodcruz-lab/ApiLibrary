package com.library.controller;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.models.BookModel;
import com.library.services.BookServices;


@RestController
@RequestMapping("/books")

public class BookController {
	// Inyectar el services
	@Autowired 
	BookServices bookservices;
	
	// GET obtener Libros activos
	@GetMapping()
	public ArrayList<BookModel> getBooks(){
		return bookservices.getBooks();
	}
	
	// POST Guardar Libro
	@PostMapping() 
	public BookModel saveBook(@RequestBody BookModel book) {
		return bookservices.saveBook(book);
	}

	// GET Obtener Libro por ID
	@GetMapping(path="/{id}")
	public Optional<BookModel> getUserById(@PathVariable("id") Long id) {
		return bookservices.getBook(id);
	}
	
	//DELETE Borrar Libro por ID
	@DeleteMapping(path="/{id}")
	public String deleteBookById(@PathVariable("id") Long id) {
		return bookservices.deleteBook(id);
	}
	
	//DELETE Borrar Libro de la Base por ID
	@DeleteMapping(path="/delete/{id}")
	public String deleteBookByIdDatabase(@PathVariable("id") Long id) {
		return bookservices.deleteBookDatabase(id);
	}
}
