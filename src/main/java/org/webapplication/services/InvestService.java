package org.webapplication.services;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.Company;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.CardRepository;
import org.webapplication.repositories.InvestRepository;

import java.util.Date;

@Service
public class InvestService {

    @Autowired
    @Qualifier("cardRepository")
    CardRepository cardRepository;

    @Autowired
    @Qualifier("investRepository")
    InvestRepository investRepository;

    HttpServletRequest request;
    Model model;

    public String returnPage(HttpServletRequest request, Model model){
        this.model = model;
        this.request = request;
        String returnPage = "";
        User user = (User) request.getSession().getAttribute("currentUser");
        Card card = cardRepository.getCardByEmail(user.getEmail());
        if(card == null){
            returnPage = "invest/errorinvest/notcard";
        }else {
            if(checkUser()){
                if(checkHasCompany()) {
                    returnPage = createOperation();
                }else {
                    returnPage = "invest/errorinvest/havecompany";
                }
            }else {
                returnPage = "invest/errorinvest/incorrectpass";
            }
        }
        return returnPage;
    }

    public String returnPageInvestMoney(HttpServletRequest request, Model model){
        this.model = model;
        this.request = request;
        String returnPage = "";
        if(checkHasCard()){
            if(checkHaveMoney()) {
                returnPage = createOperationInvest();
            }else {
                returnPage = "invest/errorinvest/notmoney";
            }
        }else {
            returnPage = "invest/errorinvest/notinvcard";
        }
        return returnPage;
    }
    private boolean checkHasCard(){
        User user = (User) request.getSession().getAttribute("currentUser");
        Card card = cardRepository.getCardByEmail(user.getEmail());
        if(card == null){
            return false;
        }else {
            return true;
        }
    }

    private String createOperationInvest(){
        User user = (User) request.getSession().getAttribute("currentUser");
        Date date = new Date();
        investRepository.spMoneyInvest(cardRepository.getCardByEmail(user.getEmail()),
                Integer.parseInt(request.getParameter("amount")),
                String.valueOf(date));
        int idCompany = Integer.parseInt(request.getParameter("companyId"));
        investRepository.sendMoneyCompany(idCompany,Integer.parseInt(request.getParameter("amount")));
        Company company = investRepository.getCompanyById(idCompany);
        model.addAttribute("name",company.getName());
        model.addAttribute("amount",request.getParameter("amount"));
        model.addAttribute("date",String.valueOf(date));
        model.addAttribute("description",company.getDescription());
        return "invest/completeInvest";
    }

    private boolean checkHaveMoney(){
        User user = (User) request.getSession().getAttribute("currentUser");
        Card card = cardRepository.getCardByEmail(user.getEmail());
        if(card.getBalance() < Integer.parseInt(request.getParameter("amount"))){
            return false;
        }else {
            return true;
        }
    }

    private boolean checkHasCompany(){
        User user = (User) request.getSession().getAttribute("currentUser");
        Company company = investRepository.getCompanyByEmail(user.getEmail());
        if(company == null){
            return true;
        }else{
            return false;
        }
    }

    private boolean checkUser(){
        User user = (User) request.getSession().getAttribute("currentUser");
        if(user.getPassword().equals(request.getParameter("password"))){
            return true;
        }else {
            return false;
        }
    }

    private String createOperation(){
        String returnPage = "invest/completeRegCompany";
        String name = request.getParameter("companyName");
        String desc = request.getParameter("companyDescription");
        String initCapital = request.getParameter("initialCapital");
        User user = (User) request.getSession().getAttribute("currentUser");
        Date date = new Date();
        Company company = new Company(null,user.getEmail(),name,
                desc,Integer.parseInt(initCapital),Integer.parseInt(initCapital),String.valueOf(date));
        cardRepository.spMoney(company);
        model.addAttribute("name",name);
        model.addAttribute("desc",desc);
        model.addAttribute("capital",initCapital);
        model.addAttribute("date",date.toString());
        return returnPage;
    }

}
