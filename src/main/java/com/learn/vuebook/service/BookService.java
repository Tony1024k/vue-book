package com.learn.vuebook.service;

import com.learn.vuebook.entity.Book;
import com.learn.vuebook.repository.BookRepository;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BookService {

    private final
    BookRepository bookDao;

    public BookService(BookRepository bookDao) {
        this.bookDao = bookDao;
    }

    public List<Book> getByIds(List<Integer> ids) {
        return bookDao.findAllById(ids);
    }


    public Page<Book> getBooksByKeywords(String keywords, Pageable pageable) {
        return bookDao.queryBooksByKeywords(keywords, pageable);
    }

    public Page<Book> getBooks(Pageable pageable) {
        return bookDao.findAll(pageable);
    }

    @Cacheable(value = "books")
    public Book getBookById(Integer id) {
        return bookDao.getOne(id);
    }

    @CacheEvict(value = "books", allEntries = true)
    public void save(Book book) {
        bookDao.save(book);
    }

    @CacheEvict(value = "books", allEntries = true)
    public void deleteById(Integer id) {
        bookDao.deleteById(id);
    }

    public Page<Book> findByKeyWords(String keywords, Pageable pageable) {
        return bookDao.findByNameContainsOrAuthorContainsOrPressContains(keywords, keywords, keywords, pageable);
    }

}
