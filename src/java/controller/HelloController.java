/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.hibernate.Session;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.view.RedirectView;
// elite is my package
import elite.entity.Dvd;
import elite.util.HibernateUtil;

/**
 *
 * @author eliteRaihan
 */
public class HelloController extends SimpleFormController {

    public HelloController() {
        setCommandClass(Dvd.class);
        setCommandName("dvd");
        setSuccessView("helloView");
        setFormView("nameView");
    }

    protected ModelAndView onSubmit(Object command) throws Exception {
        Dvd obj = (Dvd) command;
        try {
            Session session = HibernateUtil.getSessionFactory().getCurrentSession();
            session.beginTransaction();
            System.out.print("isi obj " + obj);
            session.save(obj);
            session.getTransaction().commit();
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
        return new ModelAndView(new RedirectView("tampil.htm"));
    }
}
