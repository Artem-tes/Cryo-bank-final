package org.webapplication.services;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.CardRepository;

import java.util.Date;

@Service
public class SendMoneyService {

    @Autowired
    @Qualifier("cardRepository")
    CardRepository cardRepository;

    HttpServletRequest request;
    Model model;

    public String returnPage(HttpServletRequest request, Model model){
        this.model = model;
        this.request = request;
        String returnPage = "";
        if(checkNumberCard()){
            if(checkBalanceUserCard()){
                if(checkUserPassword()){
                    if(checkHasCardUser()) {
                        returnPage = operationSendMoney();
                    }else {
                        returnPage = "mainvews/errorviews/notCard";
                    }
                }else {
                    returnPage = "mainvews/errorviews/sendPassError";
                }
            }else {
                model.addAttribute("amount",request.getParameter("amount"));
                User user = (User) request.getSession().getAttribute("currentUser");
                model.addAttribute("balance",cardRepository.getCardByEmail(user.getEmail()).getBalance());
                returnPage = "mainvews/errorviews/balanceError";
            }
        }else {
            model.addAttribute("numberCard",request.getParameter("recipientCard"));
            returnPage = "mainvews/errorviews/notFoundCard";
        }
        return returnPage;
    }


    private String operationSendMoney(){
        String returnPage = "";
        User user = (User) request.getSession().getAttribute("currentUser");
        Card card = cardRepository.getCardByEmail(user.getEmail());
        Date date = new Date();
        cardRepository.sendMoney(card.getNumber(),
                request.getParameter("recipientCard"),
                Integer.parseInt(request.getParameter("amount")));
        Card cardB = cardRepository.getCardByEmail(user.getEmail());
        request.getSession().removeAttribute("card");
        model.addAttribute("balance",cardB.getBalance());
        model.addAttribute("amount",request.getParameter("amount"));
        model.addAttribute("recCard",request.getParameter("recipientCard"));
        model.addAttribute("date",date.toString());
        cardRepository.sendTransaction(cardRepository.getCardByEmail(user.getEmail()).getNumber(),
                request.getParameter("recipientCard"),
                Integer.parseInt(request.getParameter("amount")),
                String.valueOf(date));
        returnPage = "cardviews/completeSend";
        return returnPage;
    }

    private boolean checkHasCardUser(){
        User user = (User) request.getSession().getAttribute("currentUser");
        Card card = cardRepository.getCardByEmail(user.getEmail());
        if(card == null){
            return false;
        }else {
            return true;
        }
    }

    private boolean checkUserPassword(){
        String password = request.getParameter("password");
        User user = (User) request.getSession().getAttribute("currentUser");
        if(user.getPassword().equals(password)){
            return true;
        }else {
            return false;
        }
    }

    private boolean checkNumberCard(){
        String number = request.getParameter("recipientCard");
        Card card = cardRepository.getCardByNumber(number);
        if(card == null){
            return false;
        }else {
            return true;
        }
    }

    private boolean checkBalanceUserCard(){
        String amount = request.getParameter("amount");
        User user = (User) request.getSession().getAttribute("currentUser");
        Card card = cardRepository.getCardByEmail(user.getEmail());
        if(Integer.parseInt(amount)>card.getBalance()){
            return false;
        }else {
            return true;
        }
    }
}
