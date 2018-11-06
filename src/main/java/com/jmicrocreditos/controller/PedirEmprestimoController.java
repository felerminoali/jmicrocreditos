package com.jmicrocreditos.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PedirEmprestimoController {

    @PreAuthorize("hasAnyRole('ADMIN')")
    @RequestMapping("/emprestar")
    public String emprestar(){
        return "pedirEmprestimo";
    }
}
