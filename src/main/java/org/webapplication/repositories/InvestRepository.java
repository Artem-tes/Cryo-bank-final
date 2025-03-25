package org.webapplication.repositories;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.webapplication.backend.models.BankTransaction;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.Company;
import org.webapplication.utils.MySessionFactory;

import java.util.List;

@Repository
public class InvestRepository {


    public Company getCompanyById(int id){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        Company company = (Company) session.createQuery("from Company where id = :id")
                .setParameter("id",id)
                .uniqueResult();
        session.getTransaction().commit();
        session.close();
        return company;
    }

    public void sendMoneyCompany(int idCompany, int amount){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        Company company = (Company) session.createQuery("from Company where id = :id")
                .setParameter("id",idCompany)
                .uniqueResult();
        company.setTodayCapital(company.getTodayCapital()+amount);
        session.getTransaction().commit();
        session.close();
    }

    public void spMoneyInvest(Card card, int amount, String date){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        card.setBalance(card.getBalance()-amount);
        session.update(card);
        BankTransaction transaction = new BankTransaction(null,card.getId(),date,String.valueOf(amount),0);
        session.persist(transaction);
        session.getTransaction().commit();
        session.close();
    }

    public List<Company> getAllCompany(String Email){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Company> companies = session.createQuery("from Company")
                .getResultList();
        Company company = (Company) session.createQuery("from Company where emailOwner = :email")
                .setParameter("email",Email)
                .uniqueResult();
        companies.remove(company);
        session.getTransaction().commit();
        session.close();
        return companies;
    }

    public Company getCompanyByEmail(String email){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        Company company = (Company) session.createQuery("from Company where emailOwner = :em")
                .setParameter("em",email)
                .uniqueResult();
        session.getTransaction().commit();
        session.close();
        return company;
    }

}
