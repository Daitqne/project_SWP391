package com.example.migrateproject.controller;

import java.io.*;
import java.util.ArrayList;

import com.example.migrateproject.dao.AutomakerDAO;
import com.example.migrateproject.dao.BankDAO;
import com.example.migrateproject.model.Automaker;
import com.example.migrateproject.model.Bank;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "productInstallmentServlet", value = "/productInstallment-servlet")
public class productInstallment extends HttpServlet {
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
            request.getRequestDispatcher("/hondaotog3.com/muaXeTraGop.jsp").forward(request, response);
        }catch (Exception ex){
            request.getRequestDispatcher("/hondaotog3.com/login.jsp").forward(request, response);
        }

    }

    public void destroy() {
    }
}