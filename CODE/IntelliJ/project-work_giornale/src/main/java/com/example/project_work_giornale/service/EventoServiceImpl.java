package com.example.project_work_giornale.service;

import com.example.project_work_giornale.dao.EventoDao;
import com.example.project_work_giornale.model.Categoria;
import com.example.project_work_giornale.model.Evento;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

@Service
public class EventoServiceImpl implements EventoService{

    @Autowired
    private EventoDao eventoDao;

    @Autowired
    private CategoriaService categoriaService;


    @Override
    public List<Evento> elencoEventi() {
        List<Evento> eventi = (List<Evento>) eventoDao.findAll();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");

        for (Evento evento : eventi) {
            evento.setDataEventoString(evento.getDataEvento().format(formatter));
        }
        return eventi;
    }

    @Override
    public Evento dettaglioEvento(int idEvento) {
        Optional<Evento> eventoOptional = eventoDao.findById(idEvento);
        if(eventoOptional.isPresent())
            return eventoOptional.get();
        return null;
    }

    @Override
    public void aggiungiEvento(Evento evento, String nome, String luogo, LocalDateTime dataEvento, int idCategoria) {
        evento.setNome(nome);
        evento.setLuogo(luogo);
        evento.setDataEvento(dataEvento);
        evento.setCategoria(categoriaService.datiCategoria(idCategoria));
        eventoDao.save(evento);
    }

    @Override
    public void eliminaEvento(int idEvento) {
        eventoDao.deleteById(idEvento);
    }


}
