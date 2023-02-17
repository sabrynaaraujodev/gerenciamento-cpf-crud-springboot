package br.com.pamcary.entity;


import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Data
@Table(name = "PESSO_FISICA")
public class Pessoa {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "CODIGO")
    private Integer id;

    @Column(name = "NOME")
    @NotNull
    @NotEmpty
    private String nome;

    @Column(name = "CPF")
    @Size(max = 11)
    @NotNull
    @NotEmpty
    private String cpf;

    @Column(name = "DATA_NASCIMENTO")
    @NotNull
    @NotEmpty
    private String dataNascimento;
}