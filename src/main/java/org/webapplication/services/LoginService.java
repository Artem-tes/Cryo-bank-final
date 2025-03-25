package org.webapplication.services;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.webapplication.repositories.AccountRepository;
import org.webapplication.repositories.LoginRegRepository;

@Service
@Scope
public class LoginService {

    @Autowired
    @Qualifier("loginRegRepository")
    LoginRegRepository repository;

    @Autowired
    @Qualifier("accountRepository")
    AccountRepository accountRepository;

    public String login(String email, String password, Model model, HttpServletRequest request){
        String returnPage = "redirect:/";
        if(repository.login(email,password,request) == 1){
            returnPage = "mainvews/errorviews/loginerror";
        }
        if(repository.login(email,password,request) == 2){
            returnPage = "mainvews/errorviews/errorpass";
        }
        model.addAttribute("message",repository.getName(email));
        if(returnPage.equals("redirect:/")){
            request.getSession().setAttribute("card",accountRepository.getCard(email));
        }
        return returnPage;
    }

}
