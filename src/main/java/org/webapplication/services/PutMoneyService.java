package org.webapplication.services;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.CardRepository;

import java.time.LocalDate;
import java.util.Date;

@Service
public class PutMoneyService {

    @Autowired
    @Qualifier("cardRepository")
    CardRepository cardRepository;


    HttpServletRequest request;


    public String returnPagePutMoney(HttpServletRequest request){
        this.request = request;
        String returnPage = "";
        if(checkCardNumber()){
            if(checkPassByUser()){
                returnPage = createOperationPutMoney();
            }else {
                returnPage = "mainvews/errorviews/passErrorPutMoney";
            }
        }else {
            returnPage = "mainvews/errorviews/numberErrorPutMoney";
        }
        System.out.println(returnPage);
        return returnPage;
    }

    private boolean checkCardNumber(){
        Card card = cardRepository.getCardByNumber(request.getParameter("senderCard"));
        if(card == null){
            return false;
        }else {
            return true;
        }
    }

    private boolean checkPassByUser(){
        User user = (User) request.getSession().getAttribute("currentUser");
        if(user.getPassword().equals(request.getParameter("password"))){
            return true;
        }else {
            return false;
        }
    }

    private String createOperationPutMoney(){
        request.setAttribute("amount",request.getParameter("amount"));
        request.setAttribute("recipientCard",request.getParameter("senderCard"));
        Date date = new Date();
        request.setAttribute("transactionDate",String.valueOf(date));
        cardRepository.putCardMoney(Integer.parseInt(request.getParameter("amount")),
                Integer.parseInt(request.getParameter("senderCard")));
        request.getSession().removeAttribute("card");
        Card card = cardRepository.getCardByNumber(request.getParameter("senderCard"));
        request.getSession().setAttribute("card", card);
        cardRepository.putTransaction(request.getParameter("senderCard"),
                Integer.parseInt(request.getParameter("amount")),
                String.valueOf(date));
        return "cardviews/completePut";
    }



}
