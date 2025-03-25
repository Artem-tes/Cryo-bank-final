package org.webapplication.backend.controllers;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.AccountRepository;
import org.webapplication.repositories.LoginRegRepository;
import org.webapplication.services.LoginService;
import org.webapplication.services.RegistrationService;

@Controller
public class LoginController {

    @Autowired
    @Qualifier("loginRegRepository")
    LoginRegRepository repository;

    @Autowired
    @Qualifier("registrationService")
    RegistrationService registrationService;

    @Autowired
    @Qualifier("loginService")
    LoginService service;

    @Autowired
    @Qualifier("accountRepository")
    AccountRepository accountRepository;



    @GetMapping("/login")
    private String getLoginPage(){
        return "mainvews/regviews/login";
    }

    @PostMapping("/login")
    private String loginAction(@RequestParam("email") String email,
                               @RequestParam("password") String password,
                               HttpServletRequest request,
                               Model model){
        return service.login(email,password,model,request);
    }

    @GetMapping("/registration")
    private String regButton(Model model){
        return "mainvews/regviews/registr";
    }

    @PostMapping("/registration")
    private String getInfo(@RequestParam("firstName") String firstName,
                           @RequestParam("lastName") String lastName,
                           @RequestParam("email") String email,
                           @RequestParam("phone") String phone,
                           @RequestParam("password") String password,
                           HttpServletRequest request,
                           Model model){
        return registrationService.registration(firstName,lastName,email,phone,password);
    }

}
