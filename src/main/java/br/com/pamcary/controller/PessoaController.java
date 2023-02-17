package br.com.pamcary.controller;

import br.com.pamcary.entity.Pessoa;
import br.com.pamcary.service.PessoaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@RestController
public class PessoaController {
    @Autowired
    PessoaService pessoaService;

    @GetMapping("/")
    public ModelAndView getAllPerson() {
        ModelAndView mav = new ModelAndView("index");
        List<Pessoa> peopleList = pessoaService.findAll();
        mav.addObject("pessoas", peopleList);
        return mav;
    }

    @GetMapping("/add-person")
    public ModelAndView addPerson() {
        ModelAndView mav = new ModelAndView("add_person");
        mav.addObject("command", new Pessoa());
        return mav;
    }

    @PostMapping("/save-person")
    public String savePerson(@Valid @ModelAttribute Pessoa pessoa) {
        pessoaService.save(pessoa);
        return "redirect:/";
    }

    @GetMapping("/person-update/{id}")
    public ModelAndView updatePerson(@Valid @PathVariable("id") Integer id) {
        ModelAndView mav = new ModelAndView("add_person");
        Pessoa pessoa = pessoaService.getById(id);
        mav.addObject("command", pessoa);
        return mav;
    }

    @GetMapping("/person-delete/{id}")
    public String deletePerson(@Valid @PathVariable("id") Integer id) {
        Pessoa deletePerson = pessoaService.getById(id);
        pessoaService.delete(deletePerson);
        return "redirect:/";
    }
}
