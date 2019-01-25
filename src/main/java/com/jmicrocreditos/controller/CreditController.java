package com.jmicrocreditos.controller;

import com.jmicrocreditos.model.Credito;
import com.jmicrocreditos.model.Creditoconsumo;
import com.jmicrocreditos.service.CustomUserDetailsService;
import org.hibernate.Session;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class CreditController {

    @RequestMapping(value = "/credit", method= RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request, HttpServletResponse response) {

        String destino = (String) request.getParameter("destino");

//        Credito credito = new Credito();
//
//        String montante = (String) request.getParameter("montante");
//        credito.setValor(Float.parseFloat(montante));
//
//        credito.setDataEmprestimo(new Date());

//        String datapag = (String) request.getParameter("datapag");
//        SimpleDateFormat df = new SimpleDateFormat("d/MM/yyyy");
//        Date d = df.format(datapag);

//        credito.setDataPagamento(new Date());

//        String nr_pag = (String) request.getParameter("nr_pag");
//        credito.setNrMaxPag(Integer.parseInt(nr_pag));

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();





        if(Integer.parseInt(destino) == 1){



           Creditoconsumo creditoconsumo = new Creditoconsumo();
            return new ModelAndView("redirect:"+name);



       }

        if(Integer.parseInt(destino) == 2){
            return new ModelAndView("redirect:index");
        }

        if(Integer.parseInt(destino) == 3){
            return new ModelAndView("redirect:index");
        }

        ModelAndView modelAndView = new ModelAndView("redirect:registed");



        return modelAndView;
    }
    }
