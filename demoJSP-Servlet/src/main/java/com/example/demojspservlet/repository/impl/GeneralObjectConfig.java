package com.example.demojspservlet.repository.impl;

import com.example.demojspservlet.entity.GeneralObject;
import com.example.demojspservlet.repository.IGeneraObjectDao;

import java.util.List;

public class GeneralObjectConfig implements IGeneraObjectDao {


    @Override
    public List<GeneralObject> findAll() {
        return null;
    }

    @Override
    public GeneralObject findById(int id) {
        return null;
    }

    @Override
    public boolean add(GeneralObject generalObject) {
        return false;
    }

    @Override
    public boolean edit(int id, GeneralObject generalObject) {
        return false;
    }

    @Override
    public boolean remove(int id) {
        return false;
    }
}