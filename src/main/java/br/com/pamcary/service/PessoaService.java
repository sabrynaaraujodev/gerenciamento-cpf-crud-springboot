package br.com.pamcary.service;


import br.com.pamcary.entity.Pessoa;
import br.com.pamcary.repository.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PessoaService {
    @Autowired
    PessoaRepository pessoaRepository;

    public void save(Pessoa pessoa) {
        if (pessoa.getId() == null) {
            pessoaRepository.save(pessoa);
        } else {
            Pessoa personUpdate = pessoaRepository.findById(pessoa.getId()).get();
            personUpdate.setNome(pessoa.getNome());
            personUpdate.setId(pessoa.getId());
            personUpdate.setDataNascimento(pessoa.getDataNascimento());
            personUpdate.setCpf(pessoa.getCpf());
            pessoaRepository.save(personUpdate);
        }
    }

    public List<Pessoa> findAll() {
        return pessoaRepository.findAll();
    }

    public Pessoa getById(Integer id) {
        return pessoaRepository.findById(id).get();

    }

    public void delete(Pessoa pessoa) {
        pessoaRepository.delete(pessoa);
    }
}
