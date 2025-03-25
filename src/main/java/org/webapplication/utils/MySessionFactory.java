package org.webapplication.utils;

import lombok.Getter;
import org.hibernate.cfg.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.hibernate.SessionFactory;
import org.webapplication.backend.models.BankTransaction;
import org.webapplication.backend.models.Card;
import org.webapplication.backend.models.Company;
import org.webapplication.backend.models.User;


public class MySessionFactory {

    @Getter
    private static SessionFactory sessionFactory = new Configuration()
            .configure()
            .addAnnotatedClass(User.class)
            .addAnnotatedClass(Card.class)
            .addAnnotatedClass(BankTransaction.class)
            .addAnnotatedClass(Company.class)
            .buildSessionFactory();

}
