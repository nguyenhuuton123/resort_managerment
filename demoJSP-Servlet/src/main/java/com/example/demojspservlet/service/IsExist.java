package com.example.demojspservlet.service;

import com.example.demojspservlet.entity.Customer;

import java.util.List;

public interface IsExist {
    boolean isExist(List<Customer> customerList, Customer customer);
}