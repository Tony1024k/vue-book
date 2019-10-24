package com.learn.vuebook.repository;

import com.learn.vuebook.entity.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface BookRepository extends JpaRepository<Book, Integer> {

    @Query(value = "select * from book where name like ?1 or author like ?1 or press like ?1", nativeQuery = true)
    Page<Book> queryBooksByKeywords(String keywords, Pageable pageable);

    @Query
    Page<Book> findByNameContainsOrAuthorContainsOrPressContains(String name, String author, String press,Pageable pageable);
}
