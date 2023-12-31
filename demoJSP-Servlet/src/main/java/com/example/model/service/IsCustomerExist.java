package com.example.model.service;

import com.example.model.entity.Customer;

import java.util.List;

public class IsCustomerExist implements IsExist {

    @Override
    public boolean isExist(List<Customer> customerList, Customer customer) {
        for(Customer c : customerList){
            if (customer.getName().equals(c.getName()) && customer.getEmail().equals(c.getEmail())){
                return false;
            }
        }return true;
    }
}
