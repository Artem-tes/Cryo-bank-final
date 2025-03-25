package org.webapplication.backend.controllers;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.AccountRepository;
import org.webapplication.repositories.CardRepository;

@Controller
public class AccountController {

    @Autowired
    @Qualifier("cardRepository")
    CardRepository cardRepository;

    @GetMapping("/account")
    private String accountPage(Model model, HttpServletRequest request){
        request.getSession().setAttribute("cardRep",cardRepository);
        User user = (User) request.getSession().getAttribute("currentUser");
        Card card = cardRepository.getCardByEmail(user.getEmail());
        model.addAttribute("currentUser",user);
        request.getSession().setAttribute("card", card);
        return "mainvews/accountviews/account";
    }




}
