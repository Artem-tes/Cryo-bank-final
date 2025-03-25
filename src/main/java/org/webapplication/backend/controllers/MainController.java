package org.webapplication.backend.controllers;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.Company;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.CardRepository;
import org.webapplication.repositories.InvestRepository;
import org.webapplication.services.SendMoneyService;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    @Qualifier("cardRepository")
    CardRepository cardRepository;

    @Autowired
    @Qualifier("sendMoneyService")
    SendMoneyService sendMoneyService;

    @Autowired
    @Qualifier("investRepository")
    InvestRepository investRepository;

    @GetMapping("/support-bank")
    private String getSupportMapping(){
        return "support";
    }

    @GetMapping("/about-dev")
    private String getAboutDev(){
        return "aboutdev";
    }

    @GetMapping("/company-main")
    private String getCompanyMain(HttpServletRequest request, Model model){
        User user = (User) request.getSession().getAttribute("currentUser");
        String returnPage = "company";
        if(user == null){
            returnPage = "errorcompany";
        }else {
            Company company = investRepository.getCompanyByEmail(user.getEmail());
            if(company == null){
                returnPage = "notcompany";

            }else {
                model.addAttribute("name", company.getName());
                model.addAttribute("date", company.getDate());
                model.addAttribute("initialCapital", company.getInitCapital());
                model.addAttribute("currentCapital", company.getTodayCapital());
                model.addAttribute("nameOwner", user.getFirstName() + " " + user.getLastName());
            }
        }
        return returnPage;
    }

    @PostMapping("/send-money")
    private String postSendMoney(HttpServletRequest request, Model model){
        return sendMoneyService.returnPage(request, model);
    }

    @GetMapping("/send-money")
    private String getSendMoney(HttpServletRequest request){
        String returnPage = "";
        User user = (User)request.getSession().getAttribute("currentUser");
        if(user == null){
            returnPage = "cardviews/haveReg";
        }else {
            Card card = cardRepository.getCardByEmail(user.getEmail());
            if(card == null){
                returnPage = "mainvews/errorviews/notCard";
            }else {
                returnPage = "cardviews/sendMoney";
            }
        }
        return returnPage;
    }

    @GetMapping
    private String mainView(){
        return "mainvews/main";
    }
}
