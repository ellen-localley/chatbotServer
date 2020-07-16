package com.chatbot.web.article;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.EntityManager;

@CrossOrigin(origins = "*", maxAge = 3306)
@RestController
@RequestMapping("/articles")
public class ArticleController {
}
