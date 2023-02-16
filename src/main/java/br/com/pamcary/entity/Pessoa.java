package br.com.pamcary.entity;


import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "PESSO_FISICA")
public class Pessoa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codigo;
    private String nome;
    private String cpf;
    private String dataNascimento;
}

