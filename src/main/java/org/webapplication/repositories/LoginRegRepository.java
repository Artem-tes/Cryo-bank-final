package org.webapplication.repositories;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.webapplication.backend.models.User;
import org.webapplication.utils.MySessionFactory;


@Repository
@Scope("singleton")
public class LoginRegRepository {


    public String getPassForLogin(String email){
        Session session = MySessionFactory.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        transaction.begin();
        String password = (String) session.createQuery("select password from User where email = :email")
                .setParameter("email",email)
                .uniqueResult();
        transaction.commit();
        session.close();
        return password;

    }

    public String getName(String email){
        Session session = MySessionFactory.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        transaction.begin();
        String name = (String) session.createQuery("select firstName from User where email = :email")
                .setParameter("email",email)
                .uniqueResult();
        transaction.commit();
        session.close();
        return name;
    }

    public int login(String email, String password, HttpServletRequest request){
        int status = 0;
        Session session = MySessionFactory.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        transaction.begin();
        String passForLogin = (String) session.createQuery("select password from User where email = :email")
                .setParameter("email",email)
                .uniqueResult();
        transaction.commit();
        session.close();
        if(passForLogin == null){
            status = 1;
        }
        else {
            if (!passForLogin.equals(password)) {
                status = 2;
            }if (passForLogin.equals(password)){
                Session userSession = MySessionFactory.getSessionFactory().openSession();
                userSession.getTransaction().begin();
                User user = (User) userSession.createQuery("select a from User a where email = :email")
                        .setParameter("email",email)
                        .uniqueResult();
                userSession.getTransaction().commit();
                userSession.close();
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("currentUser",user);
            }
        }

        return status;
    }

    public int reg(String firstName,
                       String lastName,
                       String email,
                       String phone,
                       String password){
        int returnStatus = 0;
        Session session = MySessionFactory.getSessionFactory().openSession();
        Transaction transaction = session.getTransaction();
        transaction.begin();
        String pass = (String) session.createQuery("select password from User where email = :email")
                .setParameter("email",email)
                .uniqueResult();
        if(pass!=null){
            returnStatus = 1;
        }else {
            User user = new User(null,firstName,lastName,email,phone,password);
            session.persist(user);
        }
        transaction.commit();
        session.close();
        return returnStatus;

    }

}
