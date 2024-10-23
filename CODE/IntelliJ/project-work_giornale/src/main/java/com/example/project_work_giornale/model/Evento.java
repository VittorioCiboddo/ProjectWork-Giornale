package com.example.project_work_giornale.model;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "evento")
public class Evento {

    @Id
    @Column(name = "id_evento")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idEvento;

    @Column
    private String nome;

    @Column
    private String luogo;

    @Column(name = "data_evento")
    private LocalDateTime dataEvento;

    // fk_id_categoria
}
