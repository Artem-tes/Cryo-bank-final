package org.webapplication.repositories;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.webapplication.backend.models.Card;
import org.webapplication.utils.MySessionFactory;

import java.util.List;

@Repository
public class AccountRepository {

    public Card getCard(String email){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        Card card = (Card)
                session.createQuery("from Card where email = :email")
                        .setParameter("email",email)
                        .uniqueResult();
        session.getTransaction().commit();
        session.close();
        return card;
    }

    public void safeCard(Card card){
        Session session = MySessionFactory.getSessionFactory().openSession();
        session.getTransaction().begin();
        session.persist(card);
        session.getTransaction().commit();
        session.close();
    }

}
