package com.example.project_work_giornale.service;

import com.example.project_work_giornale.model.Categoria;
import com.example.project_work_giornale.model.Notizia;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;


public interface NotiziaService {
    List<Notizia> elencoNotizia();
    Notizia dettaglioNotizia(int idNotizia);
    void aggiungiNotizia(Notizia notizia, String titolo, String descrizione,
                         LocalDate dataPubblicazione, String immagine, String linkVideo, Categoria categoria);
    void eliminaNotizia(int idNotizia);
}
