package com.example.project_work_giornale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

// localhost:8080/notizie
@Controller
@RequestMapping("/notizie")
public class NotizieController {

    @GetMapping
    public String getPage() {
        return "notizie";
    }
}
