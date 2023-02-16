package br.com.pamcary.service;

import br.com.pamcary.entity.Pessoa;

import java.util.List;

public interface PessoaService {
    void save(Pessoa pessoa);

    List<Pessoa> findAll();

    Pessoa getById(Integer id);

    void delete(Pessoa pessoa);
}
