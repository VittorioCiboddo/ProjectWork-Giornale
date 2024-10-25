package com.example.project_work_giornale.controller;

import com.example.project_work_giornale.model.Notizia;
import com.example.project_work_giornale.service.AdminService;
import com.example.project_work_giornale.service.NotiziaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

// localhost:8080
@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private NotiziaService notiziaService;

    @GetMapping
    public String getPage(Model model) {
        List<Notizia> notizia = notiziaService.elencoNotizia();
        model.addAttribute("notizia", notizia);
        return "index";
    }

}
