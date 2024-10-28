package com.example.project_work_giornale.service;

import com.example.project_work_giornale.model.Categoria;
import com.example.project_work_giornale.model.Evento;
import com.example.project_work_giornale.model.Notizia;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

public interface EventoService {

    List<Evento> elencoEventi();

    Evento dettaglioEvento(int idEvento);

    void aggiungiEvento(Evento evento, String nome, String luogo,
                        LocalDateTime dataEvento, int idCategoria);
    void eliminaEvento(int idEvento);
}
