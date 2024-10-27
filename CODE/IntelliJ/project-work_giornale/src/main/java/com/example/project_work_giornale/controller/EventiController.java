package com.example.project_work_giornale.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

// localhost:8080/eventi
@Controller
@RequestMapping("/eventi")
public class EventiController {

    @GetMapping
    public String getPage() {
        return "eventi";
    }
}
