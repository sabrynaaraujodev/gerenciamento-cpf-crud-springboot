package br.com.pamcary.controller;

import br.com.pamcary.entity.Pessoa;
import br.com.pamcary.service.PessoaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class PessoaController {
    @Autowired
    PessoaService pessoaService;

    @GetMapping("/")
    public ModelAndView getAllPerson() {
        ModelAndView mav = new ModelAndView("index");
        List<Pessoa> peopleList = pessoaService.findAll();
        mav.addObject("people", peopleList);
        return mav;
    }

}