package com.jmicrocreditos.controller;


import com.jmicrocreditos.config.HibernateConf;
import com.jmicrocreditos.model.*;
import com.jmicrocreditos.service.CRUDService;
import com.jmicrocreditos.service.CRUDServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class CadastroController {

    @Autowired
    @Qualifier("CRUDServiceImpl")
    private CRUDService crudService;
//    private ApplicationContext appContext = new AnnotationConfigApplicationContext(HibernateConf.class);
//    private CRUDService bean = appContext.getBean(CRUDService.class);

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView index(){

        List<Sexo> listSexo =  crudService.findByJPQuery("FROM Sexo", null);
        List<Estadocivil> listEstadoCivil =  crudService.findByJPQuery("FROM Estadocivil", null);
        List<Provincia> provinciaList = crudService.findByJPQuery("FROM Provincia", null);
        List<Distrito> distritoList = crudService.findByJPQuery("FROM Distrito", null);
        List<Tipocredito> tipocreditoList = crudService.findByJPQuery("FROM Tipocredito", null);


        ModelAndView modelAndView = new ModelAndView("/register");
        modelAndView.addObject("sexo",listSexo);
        modelAndView.addObject("estadocivil",listEstadoCivil);
        modelAndView.addObject("provincia",provinciaList);
        modelAndView.addObject("distrito",distritoList);
        modelAndView.addObject("tipocredito",tipocreditoList);

        return modelAndView;
    }

    @RequestMapping(value = "/save", method= RequestMethod.POST)
    public ModelAndView save(){

        ModelAndView modelAndView = new ModelAndView("redirect:registed");

        return modelAndView;
    }

    @RequestMapping(value = "/registed")
    public ModelAndView registed(){
        return new ModelAndView("/registed");
    }


}
