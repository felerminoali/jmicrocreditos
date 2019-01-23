package com.jmicrocreditos.controller;

import com.jmicrocreditos.service.CRUDService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    @Qualifier("CRUDServiceImpl")
    private CRUDService crudService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView("admin");
        return modelAndView;
    }

    @PreAuthorize("hasRole('ADMIN') or hasRole('STANDARD')")
    @RequestMapping(value = "/payments", method = RequestMethod.GET)
    public ModelAndView payments(){
//        ModelAndView modelAndView = new ModelAndView("/payments");
        ModelAndView modelAndView = new ModelAndView("/payments");
        return modelAndView;
    }
    @PreAuthorize("hasRole('ADMIN') or hasRole('STANDARD')")
    @RequestMapping(value = "/clients", method = RequestMethod.GET)
    public ModelAndView clients(){
        ModelAndView modelAndView = new ModelAndView("/clients");
        return modelAndView;
    }

    @PreAuthorize("hasRole('ADMIN') or hasRole('STANDARD')")
    @RequestMapping(value = "/requirments", method = RequestMethod.GET)
    public ModelAndView requirments(){
        ModelAndView modelAndView = new ModelAndView("/requirments");
        return modelAndView;
    }
}
