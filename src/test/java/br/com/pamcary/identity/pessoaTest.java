package br.com.pamcary.identity;

import br.com.pamcary.AvaliacaoApplicationTests;
import br.com.pamcary.entity.Pessoa;
import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class pessoaTest extends AvaliacaoApplicationTests {
    @Test
    public void deveCriarPessoa() {
        Pessoa pessoa = Pessoa.builder()
                .id(1)
                .nome("Silvio Toledo")
                .cpf("12345678910")
                .dataNascimento("2018-12-28 02:00:21")
                .build();
        assertThat(pessoa.getId()).isEqualTo(1);
        assertThat(pessoa.getNome()).isEqualTo("Silvio Toledo");
        assertThat(pessoa.getCpf()).isEqualTo("12345678910");
        assertThat(pessoa.getCpf()).isEqualTo("2018-12-28 02:00:21");
    }

}
