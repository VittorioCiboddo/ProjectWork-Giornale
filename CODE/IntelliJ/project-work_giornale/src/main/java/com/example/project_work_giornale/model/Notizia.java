package com.example.project_work_giornale.model;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "notizia")
public class Notizia {

    @Id
    @Column(name = "id_notizia")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idNotizia;

    @Column
    private String titolo;

    @Column
    private String descrizione;

    @Column(name = "data_pubblicazione")
    private LocalDate dataPubblicazione;

    @Column
    private String immagine;

    @Column(name = "link_video")
    private String linkVideo;

    // fk_id_categoria
}
