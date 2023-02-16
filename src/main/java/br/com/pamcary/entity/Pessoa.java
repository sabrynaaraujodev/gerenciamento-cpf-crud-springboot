package br.com.pamcary.entity;


import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "PESSO_FISICA")
public class Pessoa {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "CODIGO")
    private Integer id;

    @Column(name = "NOME")
    private String nome;

    @Column(name = "CPF")
    private String cpf;

    @Column(name = "DATA_NASCIMENTO")
    private String dataNascimento;
}