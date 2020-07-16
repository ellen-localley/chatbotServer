package com.chatbot.web.progress;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.EntityManager;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/members")
public class ProgressController {
    @Autowired
    ProgressRepository progressRepository;
    @Autowired
    EntityManager manager;
}
