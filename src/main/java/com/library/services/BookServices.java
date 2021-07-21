package com.library.services;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.models.BookModel;
import com.library.repositories.IBookRepository;

@Service
public class BookServices {

	@Autowired
	IBookRepository bookRepository;

	// Obtener Libros activos
	public ArrayList<BookModel> getBooks() {
		ArrayList<BookModel> list = (ArrayList<BookModel>) bookRepository.findAll();
		list.removeIf(book -> book.getActive() == false);
		return list;
	}

	// Obtener Libro por ID
	public Optional<BookModel> getBook(Long id) {
		return bookRepository.findById(id);
	}

	// Guardar Libro
	public BookModel saveBook(BookModel book) {
		return bookRepository.save(book);
	}

	// Borrar Libro
	public String deleteBook(Long id) {
		Optional<BookModel> book = bookRepository.findById(id);

		if (book.isPresent()) {
			book.get().setActive(false);
			bookRepository.save(book.get());

			return "Deleted book";
		}
		return "Book not deleted";
	}
	
	// Borrar Libro de la Base
	public String deleteBookDatabase(Long id) {
		Optional<BookModel> book = bookRepository.findById(id);

		if (book.isPresent()) {
			bookRepository.deleteById(id);;

			return "Deleted book";
		}
		return "Book not deleted";
	}

}
