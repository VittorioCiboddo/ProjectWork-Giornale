package com.example.project_work_giornale.model;

import jakarta.persistence.*;

import java.time.LocalDateTime;
import java.util.List;

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
    @Transient // Questo campo non sarà persistito nel DB
    private String dataEventoString; // campo per la stringa formattata


    @ManyToOne(cascade = CascadeType.REFRESH)
    @JoinColumn(name = "fk_id_categoria", referencedColumnName = "id_categoria")
    private Categoria categoria;

    public int getIdEvento() {
        return idEvento;
    }

    public void setIdEvento(int idEvento) {
        this.idEvento = idEvento;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLuogo() {
        return luogo;
    }

    public void setLuogo(String luogo) {
        this.luogo = luogo;
    }

    public LocalDateTime getDataEvento() {
        return dataEvento;
    }

    public void setDataEvento(LocalDateTime dataEvento) {
        this.dataEvento = dataEvento;
    }

    public String getDataEventoString() {
        return dataEventoString;
    }

    public void setDataEventoString(String dataEventoString) {
        this.dataEventoString = dataEventoString;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
}
