package com.library.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.models.AuthorModel;
import com.library.services.AuthorServices;

@RestController
@RequestMapping("/authors")

public class AuthorController {
	// Inyectar el services
	@Autowired 
	AuthorServices authorServices;
	
	// GET obtener Autores
	@GetMapping()
	public ArrayList<AuthorModel> getBooks(){
		return authorServices.getAuthors();
	}
}
