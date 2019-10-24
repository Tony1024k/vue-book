package com.learn.vuebook.controller;


import com.learn.vuebook.entity.Book;
import com.learn.vuebook.service.BookService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/book")
public class BookController {

    private final
    BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping("/get")
    public Book get(Integer id) {
        return bookService.getBookById(id);
    }

    @RequestMapping("/getByIds")
    public List<Book> getByIds(String ids) {
        String[] split = ids.split(",");
        List<Integer> list = new ArrayList<>();
        for (String id : split) {
            list.add(Integer.valueOf(id));
        }
        return bookService.getByIds(list);
    }

    @RequestMapping("/save")
    public void add(Book book) {
        bookService.save(book);
    }

    @RequestMapping("/getAll")
    public Map<String, Object> getAll(Integer page, Integer size) {
        Map<String, Object> map = new HashMap<>();
        Pageable pageable = PageRequest.of(page, size, Sort.Direction.ASC, "name");
        Page<Book> result = bookService.getBooks(pageable);
        map.put("books", result.getContent());
        map.put("totalPages", result.getTotalPages());
        return map;
    }

    @RequestMapping("/search")
    public Map<String, Object> findByKeyWords(String keywords, Integer page, Integer size) {
        Map<String, Object> map = new HashMap<>();
        Pageable pageable = PageRequest.of(page, size, Sort.Direction.ASC, "name");
        Page<Book> result = bookService.findByKeyWords(keywords, pageable);
        map.put("books", result.getContent());
        map.put("totalPages", result.getTotalPages());
        return map;
    }

    @RequestMapping("/delete")
    public void delete(Integer id) {
        bookService.deleteById(id);
    }


}
