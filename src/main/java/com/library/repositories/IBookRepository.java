package com.library.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.library.models.BookModel;

@Repository
public interface IBookRepository extends CrudRepository<BookModel, Long>{
	
}
