package org.webapplication.repositories;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.webapplication.backend.models.BankTransaction;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.Company;
import org.webapplication.utils.MySessionFactory;

import javax.transaction.Transactional;
import java.io.Serializable;
import java.util.List;

@Repository
public class CardRepository {



    public void spMoney(Company company){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        session.persist(company);
        Card card = getCardByEmail(company.getEmailOwner());
        card.setBalance(card.getBalance()-company.getInitCapital());
        session.update(card);
        BankTransaction bankTransaction = new BankTransaction(
                null,card.getId(), company.getDate(), String.valueOf(company.getInitCapital()),0);
        session.persist(bankTransaction);
        session.getTransaction().commit();
        session.close();
    }

    public List<BankTransaction> getAllTransactionById(int id){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<BankTransaction> transactions = session.createQuery("from BankTransaction where idCard = :id")
                .setParameter("id",id)
                .getResultList();
        session.getTransaction().commit();
        session.close();
        return transactions;
    }


    public void sendTransaction(String dotNumber, String toNumber, int amount, String date){
        BankTransaction tr1 = new BankTransaction(
                null,getIdByNumber(dotNumber),date,String.valueOf(amount),0);
        BankTransaction tr2 = new BankTransaction(
                null,getIdByNumber(toNumber),date,String.valueOf(amount),1);
        Session session = MySessionFactory.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        transaction.begin();
        session.persist(tr1);
        session.persist(tr2);
        transaction.commit();
        session.close();
    }

    public void putTransaction(String number, int amount, String date){
        Session session = MySessionFactory.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        transaction.begin();
        BankTransaction transactionUser = new BankTransaction(
                null, getIdByNumber(number),date,String.valueOf(amount),1);
        session.persist(transactionUser);
        transaction.commit();
        session.close();
    }

    public int getIdByNumber(String number){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        Card card = (Card) session.createQuery("from Card where number = :number")
                .setParameter("number",number)
                .uniqueResult();
        session.getTransaction().commit();
        session.close();
        return card.getId();
    }

    public void sendMoney(String dotNumber, String postNumber, int amount){
        Session session = MySessionFactory.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        transaction.begin();
        Card cardDot = getCardByNumber(dotNumber);
        cardDot.setBalance(cardDot.getBalance() - amount);
        Card cardTo = getCardByNumber(postNumber);
        cardTo.setBalance(cardTo.getBalance() + amount);
        session.update(cardTo);
        session.update(cardDot);
        transaction.commit();
        session.close();
    }

    public Card getCardByEmail(String email){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        Card card = (Card) session.createQuery
                        ("from Card where email = :email")
                .setParameter("email",email)
                .uniqueResult();
        session.getTransaction().commit();
        session.close();
        return card;
    }

    public Card getCardByNumber(String number){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        Card card = (Card) session.createQuery
                ("from Card where number = :number")
                .setParameter("number",number)
                .uniqueResult();
        session.getTransaction().commit();
        session.close();
        return card;
    }

    public void putCardMoney(int amount, int number){
        Session session = MySessionFactory.getSessionFactory().openSession();
        Card card = getCardByNumber(String.valueOf(number));
        card.setBalance(card.getBalance() + amount);
        session.getTransaction().begin();
        session.update(card);
        session.getTransaction().commit();
        session.close();
    }

}
