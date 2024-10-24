package com.example.project_work_giornale.controller;

import com.example.project_work_giornale.service.AdminService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/loginadmin")
public class LoginAdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping
    public String formManager(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpSession session) {
        if(!adminService.loginAdmin(username, password, session))
            return "redirect:/logiadmin?error";
        return "redirect:/riservataadmin";
    }
}
