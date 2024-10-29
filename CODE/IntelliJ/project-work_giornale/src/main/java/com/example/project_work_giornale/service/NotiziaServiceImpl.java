package com.example.project_work_giornale.service;

import com.example.project_work_giornale.dao.NotiziaDao;
import com.example.project_work_giornale.model.Notizia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.util.Base64;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class NotiziaServiceImpl implements NotiziaService {

    @Autowired
    private NotiziaDao notiziaDao;

    @Autowired
    private CategoriaService categoriaService;

    @Override
    public List<Notizia> elencoNotizia() {
        return (List<Notizia>) notiziaDao.findAll();
    }

    @Override
    public List<Notizia> elencoNotiziaInversed() {
        List<Notizia> notizie = (List<Notizia>) notiziaDao.findAll();
        Comparator<Notizia> comparator = Comparator.comparing(Notizia::getIdNotizia).reversed();
        notizie = notizie.stream().sorted(comparator).limit(3).collect(Collectors.toList());
        return notizie;
    }

    @Override
    public Notizia dettaglioNotizia(int idNotizia) {
        Optional<Notizia> notiziaOptional = notiziaDao.findById(idNotizia);
        return notiziaOptional.orElse(null);
    }

    @Override
    public void aggiungiNotizia(Notizia notizia, String titolo, String descrizione, LocalDate dataPubblicazione, MultipartFile immagine, String linkVideo, int idCategoria) {
        notizia.setTitolo(titolo);
        notizia.setDescrizione(descrizione);
        notizia.setCategoria(categoriaService.datiCategoria(idCategoria));
        notizia.setDataPubblicazione(dataPubblicazione);

        if (immagine != null && !immagine.isEmpty()) {
            try {
                String formato = immagine.getContentType();
                String immagineCodificata = "data:" + formato + ";base64," +
                        Base64.getEncoder().encodeToString(immagine.getBytes());
                notizia.setImmagine(immagineCodificata);
            } catch (Exception e) {
                System.out.println("Error encoding image: " + e.getMessage());
            }
        }
        notiziaDao.save(notizia);
    }

    @Override
    public void eliminaNotizia(int idNotizia) {
        notiziaDao.deleteById(idNotizia);
    }
}
