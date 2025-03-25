package org.webapplication.backend.controllers.ac;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.webapplication.backend.controllers.AccountController;
import org.webapplication.backend.models.BankTransaction;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.User;
import org.webapplication.repositories.CardRepository;
import org.webapplication.services.CardService;
import org.webapplication.services.InvestService;
import org.webapplication.services.PutMoneyService;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/account")
public class BorderAccountController {

    @Autowired
    @Qualifier("cardService")
    CardService cardService;

    @Autowired
    @Qualifier("putMoneyService")
    PutMoneyService putMoneyService;

    @Autowired
    @Qualifier("cardRepository")
    CardRepository cardRepository;

    @Autowired
    @Qualifier("investService")
    InvestService investService;

    @GetMapping("/check-transactions")
    private String getCheckTransaction(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("currentUser");
        Card card = cardRepository.getCardByEmail(user.getEmail());
        String returnPage = "transaction/transaction";
        if(card == null){
            returnPage = "transaction/error";


        }else {
            List<BankTransaction> transactions = cardRepository.getAllTransactionById(card.getId());
            Collections.reverse(transactions);
            request.getSession().setAttribute("transactions", transactions);
        }
        return returnPage;
    }

    @GetMapping("/create-company")
    private String getCreateCompany(HttpServletRequest request){
        return "invest/regCompany";
    }

    @PostMapping("/create-company")
    private String postCreateCompany(HttpServletRequest request, Model model){
        return investService.returnPage(request,model);
    }

    @GetMapping("/put-money")
    private String putMoney(){
        return "cardviews/putMoney";
    }

    @PostMapping("/put-money")
    private String postPutMoney(HttpServletRequest request){
        return putMoneyService.returnPagePutMoney(request);
    }

    @GetMapping("/create-card")
    private String createCard(HttpServletRequest request){
        return "cardviews/regCard";
    }

    @PostMapping("/create-card")
    private String createCardPost(HttpServletRequest request){
        String returnPage = cardService.returnPage(request);
        return returnPage;
    }

    @GetMapping("/logout")
    private String logoutMain(HttpServletRequest request){
        request.getSession().removeAttribute("currentUser");
        request.getSession().removeAttribute("card");
        return "redirect:/";
    }

}
