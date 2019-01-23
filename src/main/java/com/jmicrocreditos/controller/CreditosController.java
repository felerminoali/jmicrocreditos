package com.jmicrocreditos.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CreditosController {

    @PreAuthorize("hasAnyRole('ADMIN') or hasAnyRole('CLIENT')")
    @RequestMapping("/credits")
    public ModelAndView emprestar(){
        ModelAndView modelAndView = new ModelAndView("/credits");
        return modelAndView;
    }
}
