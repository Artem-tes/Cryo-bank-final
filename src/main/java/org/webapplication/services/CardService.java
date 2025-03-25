package org.webapplication.services;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.AccountRepository;
import org.webapplication.repositories.LoginRegRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Service
public class CardService {

    @Autowired
    @Qualifier("loginRegRepository")
    LoginRegRepository loginRegRepository;

    @Autowired
    @Qualifier("accountRepository")
    AccountRepository accountRepository;

    HttpServletRequest request;

    public String returnPage(HttpServletRequest request){
        this.request = request;
        String returnPage = "";
        if(checkUser()){
            if(checkHasCard()){
                createCard(request.getParameter("email"));
                returnPage = "cardviews/compliteCardReg";
            }else {
                returnPage = "mainvews/errorviews/havecarderror";
            }
        }else {
            returnPage = "mainvews/errorviews/emailerrorcard";
        }
        return returnPage;
    }

    private boolean checkUser(){
        boolean isGood = false;
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = (User) request.getSession().getAttribute("currentUser");
        if(email.equals(user.getEmail())){
            if(password.equals(loginRegRepository.getPassForLogin(email))){
                isGood = true;
            }
        }

        return  isGood;
    }

    private boolean checkHasCard(){
        String email = request.getParameter("email");
        Card card = accountRepository.getCard(email);
        if(card == null){
            return true;
        }else{
            return false;
        }
    }

    private void createCard(String email){
        Card card = createServiceCard(email);
        request.getSession().
                setAttribute("card",card);
        accountRepository.safeCard(card);

    }


    private Card createServiceCard(String email){
        int number = new Random().nextInt(10000000,99999999);
        Card card = new Card();
        card.setNumber(String.valueOf(number));
        card.setDate(String.valueOf(new Random().nextInt(1,30))
                +"/" + String.valueOf(new Random().nextInt(1,12)));
        card.setCvv(String.valueOf(new Random().nextInt(100,999)));
        card.setEmail(email);
        card.setBalance(0);
        return card;
        }
    }


