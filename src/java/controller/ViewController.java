/* step 3: di ViewController.java
selanjutnya di: nameView.jsp */
/*
nambah semua import; nambah implements; nambah method handleRequest()
*/
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
// elite is my package
import elite.util.HibernateUtil;

/**
 *
 * @author eliteRaihan
 */
public class ViewController implements Controller {

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsreq, HttpServletResponse hsresp)
            throws Exception {
        ModelAndView mv = new ModelAndView("tampi1");
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List result = session.createQuery("from Dvd").list();
        mv.addObject("dataDvd", result);
        session.getTransaction().commit();
        return mv;
    }
}