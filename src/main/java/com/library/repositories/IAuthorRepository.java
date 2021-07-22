package com.library.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.library.models.AuthorModel;

@Repository
public interface IAuthorRepository extends CrudRepository<AuthorModel, Long>{
	
}
