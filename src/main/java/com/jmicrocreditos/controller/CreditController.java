package com.jmicrocreditos.controller;

import com.jmicrocreditos.model.*;
import com.jmicrocreditos.service.CRUDService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
public class CreditController {

    @Autowired
    @Qualifier("CRUDServiceImpl")

    private CRUDService crudService;
    private Credito credito;
    private User user;

    @RequestMapping(value = "/credit", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request){

        List<Tipocredito> listtipoCredito =  crudService.getAll(Tipocredito.class);
        List<Instituicao> listInstituicao =  crudService.getAll(Instituicao.class);

        ModelAndView modelAndView = new ModelAndView("/credit");
        modelAndView.addObject("tipocredito",listtipoCredito);
        modelAndView.addObject("instituicao",listInstituicao);

        return modelAndView;
    }

    @RequestMapping(value = "/credit", method= RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request, HttpServletResponse response) {

        Credito credito = new Credito();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        //String name = auth.getName();
        user = (User) auth.getPrincipal();
        int userId = user.getId();

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        int PGTO = 2, STATUS = 1;
        String status ="1";
        int destino = Integer.parseInt(request.getParameter("destino"));


        try {

            Date date_emp = formatter.parse(request.getParameter("dataemp"));
            Date date_pag= formatter.parse(request.getParameter("datapag"));
            credito.setValor(Double.parseDouble(request.getParameter("montante")));

            credito.setIdtipocredito(new Tipocredito(destino));
            credito.setIdcliente(new Cliente(userId));
            credito.setNrMaxPag(PGTO);
            credito.setIdestado(new Estado(Long.parseLong(status)));
            credito.setDataEmprestimo(date_emp);
            credito.setDataPagamento(date_pag);

            this.credito = new Credito();
            crudService.Save(credito);
            return new ModelAndView("redirect:registed");

        } catch (ParseException e) {
            e.printStackTrace();
        }

        if(destino == 1){

            System.out.println("Novo IdCreditos:"+credito.getIdcredito());
            //System.out.println("Novo IdCreditos:"+crudService.get(Credito.class,));
            //Integer.parseInt(request.getParameter("instituicao"))

            Creditoconsumo creditoconsumo = new Creditoconsumo();
            Instituicao instituicao = new Instituicao();
            instituicao.setIdinstituicao(1);

            CreditoconsumoPK creditoconsumoPK = new CreditoconsumoPK();

            creditoconsumoPK.setIdcredito(credito.getIdcredito().shortValue());
            creditoconsumoPK.setIdinstituicao(instituicao.getIdinstituicao().shortValue());

            //System.out.println("CREDITOS: "+creditoconsumoPK.toString());

            creditoconsumo.setCreditoconsumoPK(creditoconsumoPK);
            creditoconsumo.setFuncao(request.getParameter("funcao"));
            creditoconsumo.setContactogestor(request.getParameter("contactBoss"));
            creditoconsumo.setTitularconta(request.getParameter("titular"));
            creditoconsumo.setNrconta(request.getParameter("nr_conta"));
            creditoconsumo.setUrlbi(request.getParameter("bi"));
            creditoconsumo.setUrlextratobancario(request.getParameter("extrato"));
            creditoconsumo.setUrldeclaracaoservico(request.getParameter("declaracaoServico"));
            creditoconsumo.setUrloutro(request.getParameter("penhor"));
            creditoconsumo.setNomebanco(request.getParameter("banco"));

            //System.out.println("Dados do Credito: "+creditoconsumo.toString());

            crudService.Save(creditoconsumo);
            return new ModelAndView("redirect:registed");
       }
        if(destino == 2){
            return new ModelAndView("redirect:index");
        }
        if(destino == 3){
            return new ModelAndView("redirect:index");
        }

        return new ModelAndView("redirect:registed");
    }

    @RequestMapping(value = "/registed")
    public ModelAndView registed(){
        ModelAndView modelAndView = new ModelAndView("/registed");
        modelAndView.addObject("credito", this.credito);
        return modelAndView;
    }

    }
