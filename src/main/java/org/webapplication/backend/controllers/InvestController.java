package org.webapplication.backend.controllers;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.webapplication.backend.models.Company;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.InvestRepository;
import org.webapplication.services.InvestService;

import java.util.List;

@Controller
@RequestMapping("/invest")
public class InvestController {


    @Autowired
    @Qualifier("investRepository")
    InvestRepository investRepository;

    @Autowired
    @Qualifier("investService")
    InvestService investService;

    @GetMapping("/main-page")
    private String getInvest(HttpServletRequest request) {
        String returnPage = "invest/mainInvest";
        User user = (User) request.getSession().getAttribute("currentUser");
        if(user == null){
            returnPage = "mainvews/errorviews/notuser";
        }else {
            List<Company> companies = investRepository.getAllCompany(user.getEmail());
            request.getSession().setAttribute("companies", companies);
        }
        return returnPage;
    }

    @PostMapping("/pay")
    private String postPay(HttpServletRequest request, Model model){
        return investService.returnPageInvestMoney(request,model);
    }
}
