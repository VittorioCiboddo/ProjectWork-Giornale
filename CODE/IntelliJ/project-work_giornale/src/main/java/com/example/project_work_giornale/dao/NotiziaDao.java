package com.example.project_work_giornale.dao;

import com.example.project_work_giornale.model.Categoria;
import com.example.project_work_giornale.model.Notizia;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface NotiziaDao extends CrudRepository<Notizia, Integer> {
/*
    Notizia groupByCategoriaAI(int idCategoria);

    @Query
            (
                    value = "SELECT n.titolo, n.descrizione, n.data_pubblicazione, n.immagine, n.link_video, c.nome AS 'tipologia' " +
                            "FROM notizia n " +
                            "JOIN categoria c ON n.fk_id_categoria = c.id_categoria " +
                            "WHERE c.nome = 'intelligenza artificiale' " +
                            "ORDER BY c.nome;",
                    nativeQuery = true
            )

    Notizia groupByCategoriaCyber(int idCategoria);

    @Query
            (
                    value = "SELECT n.titolo, n.descrizione, n.data_pubblicazione, n.immagine, n.link_video, c.nome AS 'tipologia' " +
                            "FROM notizia n " +
                            "JOIN categoria c ON n.fk_id_categoria = c.id_categoria " +
                            "WHERE c.nome = 'cyber security' " +
                            "ORDER BY c.nome;",
                    nativeQuery = true

            )

    Notizia groupByCategoriaInnovazioni(int idCategoria);

    @Query
            (
                    value = "SELECT n.titolo, n.descrizione, n.data_pubblicazione, n.immagine, n.link_video, c.nome AS 'tipologia' " +
                            "FROM notizia n " +
                            "JOIN categoria c ON n.fk_id_categoria = c.id_categoria " +
                            "WHERE c.nome = 'innovazioni' " +
                            "ORDER BY c.nome;",
                    nativeQuery = true

            )

    Notizia groupByCategoriaRobotica(int idCategoria);

    @Query
            (
                    value = "SELECT n.titolo, n.descrizione, n.data_pubblicazione, n.immagine, n.link_video, c.nome AS 'tipologia' " +
                            "FROM notizia n " +
                            "JOIN categoria c ON n.fk_id_categoria = c.id_categoria " +
                            "WHERE c.nome = 'robotica' " +
                            "ORDER BY c.nome;",
                    nativeQuery = true
            )*/
}
