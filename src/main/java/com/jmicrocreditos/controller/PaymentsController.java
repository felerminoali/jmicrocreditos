package com.jmicrocreditos.controller;

import com.jmicrocreditos.service.CRUDService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/payments")
public class PaymentsController {

    @Autowired
    @Qualifier("CRUDServiceImpl")
    private CRUDService crudService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView("/payments");
        return modelAndView;
    }

}
