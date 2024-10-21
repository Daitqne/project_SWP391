package com.example.migrateproject.controller;

import java.io.*;
import java.util.ArrayList;

import com.example.migrateproject.dao.AutomakerDAO;
import com.example.migrateproject.dao.BankDAO;
import com.example.migrateproject.dao.ProductDAO;
import com.example.migrateproject.model.Automaker;
import com.example.migrateproject.model.Bank;
import com.example.migrateproject.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "productPriceServlet", value = "/productPrice-servlet")
public class productPrice extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try{
            AutomakerDAO automakerDAO=new AutomakerDAO();
            BankDAO bankDAO=new BankDAO();
            ArrayList<Automaker> listAutomaker = automakerDAO.getAllAutomaker();
            request.setAttribute("listAutomaker", listAutomaker);
            ArrayList<Bank> listBank= (ArrayList<Bank>) bankDAO.getAllBank();
            request.setAttribute("listBank",listBank);
            ProductDAO productDAO=new ProductDAO();
            ArrayList<Product> listTop4HondaCity= productDAO.getTop4HondaCity();
            request.setAttribute("listTop4HondaCity",listTop4HondaCity);
            ArrayList<Product> listTop4HondaCivic= productDAO.getTop4HondaCivic();
            request.setAttribute("listTop4HondaCivic",listTop4HondaCivic);
            ArrayList<Product> listTop4HondaBRV= productDAO.getTop4HondaBRV();
            request.setAttribute("listTop4HondaBRV",listTop4HondaBRV);
            ArrayList<Product> listTop4HondaHRV= productDAO.getTop4HondaHRV();
            request.setAttribute("listTop4HondaHRV",listTop4HondaHRV);
            ArrayList<Product> listTop4HondaCRV= productDAO.getTop4HondaCRV();
            request.setAttribute("listTop4HondaCRV",listTop4HondaCRV);
            ArrayList<Product> listTop4HondaAccird=productDAO.getTop4HondaAccord();
            request.setAttribute("listTop4HondaAccird",listTop4HondaAccird);
            request.getRequestDispatcher("/hondaotog3.com/productPrice.jsp").forward(request, response);
        }catch (Exception ex){
            request.getRequestDispatcher("/hondaotog3.com/login.jsp").forward(request, response);
        }
    }

    public void destroy() {
    }
}