package com.jmicrocreditos.controller;


import com.jmicrocreditos.model.*;
import com.jmicrocreditos.service.CRUDService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/user")
public class RegisterController {

    @Autowired
    @Qualifier("CRUDServiceImpl")
    private CRUDService crudService;

    private User u;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request){

        List<Sexo> listSexo =  crudService.getAll(Sexo.class);
        List<Estadocivil> listEstadoCivil =  crudService.getAll(Estadocivil.class);
        List<Provincia> provinciaList = crudService.getAll(Provincia.class);
        List<Distrito> distritoList = crudService.getAll(Distrito.class);
        List<Tipocredito> tipocreditoList = crudService.getAll(Tipocredito.class);

        ModelAndView modelAndView = new ModelAndView("/register");
        modelAndView.addObject("sexo",listSexo);
        modelAndView.addObject("estadocivil",listEstadoCivil);
        modelAndView.addObject("provincia",provinciaList);
        modelAndView.addObject("distrito",distritoList);
        modelAndView.addObject("tipocredito",tipocreditoList);

        return modelAndView;
    }

    @RequestMapping(value = "/register", method= RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request, HttpServletResponse response){

        String nome = (String) request.getParameter("nome");
        String apelido = (String) request.getParameter("apelido");
        String nr_documento = (String) request.getParameter("nr_documento");
        String contacto1 = (String) request.getParameter("contacto1");
        String contacto2 = (String) request.getParameter("contacto2");
        String email = (String) request.getParameter("email");
        String sexo = (String) request.getParameter("sexo");
        String idestadocivil = (String) request.getParameter("estadocivil");
        String iddistrito = (String) request.getParameter("distrito");
        String linhaendereco1 = (String) request.getParameter("endereco1");
        String linhaendereco2 = (String) request.getParameter("endereco2");
        String password = (String) request.getParameter("password");


        User user = new User();
        this.u = user;

        user.setName(nome);
        user.setLastName(apelido);
        user.setEmail(email);
        user.setPassword(password);
        user.setActive(1);

        Set<Role> roles = new HashSet<>();

        roles.add(crudService.get(Role.class, 2));
        user.setRoles(roles);

        crudService.Save(user);



        Cliente cliente = new Cliente();


        cliente.setNrBi(nr_documento);
        cliente.setContacto1(contacto1);
        cliente.setContacto2(contacto2);
        cliente.setIdsexo(crudService.get(Sexo.class, Long.parseLong(sexo)));
        cliente.setIdestadocivil(crudService.get(Estadocivil.class, Integer.parseInt(idestadocivil)));
        cliente.setIddistrito(crudService.get(Distrito.class, Integer.parseInt(iddistrito)));
        cliente.setLinhaendereco1(linhaendereco1);
        cliente.setLinhaendereco2(linhaendereco2);
        cliente.setIdcliente(user.getId());
        cliente.setUser(user);


        crudService.Save(cliente);


        ModelAndView modelAndView = new ModelAndView("redirect:registed");


        return modelAndView;
    }

    @RequestMapping(value = "/registed")
    public ModelAndView registed(){
        ModelAndView modelAndView = new ModelAndView("/registed");
        modelAndView.addObject("user", this.u);
        return modelAndView;
    }


}
