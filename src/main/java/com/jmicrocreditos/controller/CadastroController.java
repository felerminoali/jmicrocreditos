package com.jmicrocreditos.controller;

import com.jmicrocreditos.model.Users;
import com.jmicrocreditos.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class CadastroController {

//    @RequestMapping("/cadastro")
//    public String cadastrar(){
//        return "cadastro";
//    }

//    public String form(Model model){
//        model.addAttribute("types", BookType.values());
//        return "products/form";
//    }

    @Autowired
    private UsersRepository usersRepository;

    @RequestMapping("/cadastro")
    public ModelAndView form(){
        ModelAndView modelAndView = new ModelAndView("/cadastro");

        Optional<Users> user = usersRepository.findByName("admin");


        modelAndView.addObject("user", user.get());
        return modelAndView;
    }

//    @RequestMapping(method= RequestMethod.POST)
//    public String save(Product product){
//
//    }


}
