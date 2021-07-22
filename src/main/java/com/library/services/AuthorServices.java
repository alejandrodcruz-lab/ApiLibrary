package com.library.services;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.models.AuthorModel;
import com.library.repositories.IAuthorRepository;

@Service
public class AuthorServices {

	@Autowired
	IAuthorRepository authorRepository;

	// Obtener Autores
	public ArrayList<AuthorModel> getAuthors() {
		ArrayList<AuthorModel> list = (ArrayList<AuthorModel>) authorRepository.findAll();
		return list;
	}

	public Optional<AuthorModel> getAuthor(Long id) {
		return authorRepository.findById(id);
	}
}
