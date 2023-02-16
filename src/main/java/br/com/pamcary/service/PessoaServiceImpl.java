package br.com.pamcary.service;


import br.com.pamcary.entity.Pessoa;
import br.com.pamcary.repository.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PessoaServiceImpl implements PessoaService {
    @Autowired
    PessoaRepository pessoaRepository;

    @Override
    public void save(Pessoa pessoa) {
        if (pessoa.getCodigo() == null) {
            pessoaRepository.save(pessoa);
        } else {
            Pessoa personUpdate = pessoaRepository.findById(pessoa.getCodigo()).get();
            personUpdate.setNome(pessoa.getNome());
            personUpdate.setCodigo(pessoa.getCodigo());
            personUpdate.setDataNascimento(pessoa.getDataNascimento());
            personUpdate.setCpf(pessoa.getCpf());
            pessoaRepository.save(personUpdate);
        }
    }

    @Override
    public List<Pessoa> findAll() {
        return pessoaRepository.findAll();
    }

    @Override
    public Pessoa getById(Integer id) {
        return pessoaRepository.findById(id).get();

    }

    @Override
    public void delete(Pessoa pessoa) {
        pessoaRepository.delete(pessoa);
    }
}
