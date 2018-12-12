package com.jmicrocreditos.controller;

import com.jmicrocreditos.model.Provincia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PedirEmprestimoController {

//    @PreAuthorize("hasAnyRole('ADMIN')")
//    @RequestMapping("/emprestar")
//    public String emprestar(){
//        return "pedirEmprestimo";
//    }

    @PreAuthorize("hasAnyRole('ADMIN')")
    @RequestMapping("/emprestar")
    public ModelAndView emprestar(){
        ModelAndView modelAndView = new ModelAndView("backup/pedirEmprestimo");


        return modelAndView;
    }
}
