package com.example.project_work_giornale.dao;

import com.example.project_work_giornale.model.Notizia;
import org.springframework.data.repository.CrudRepository;

public interface NotiziaDao extends CrudRepository<Notizia, Integer> {
}
