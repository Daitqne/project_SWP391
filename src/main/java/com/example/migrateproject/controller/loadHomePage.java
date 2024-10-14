package com.example.migrateproject.controller;

import java.io.*;
import java.util.ArrayList;

import com.example.migrateproject.dao.AutomakerDAO;
import com.example.migrateproject.dao.ProductDAO;
import com.example.migrateproject.model.Automaker;
import com.example.migrateproject.model.Product;
import dto.GetTopProductsWithFirstAttribute;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "loadHomePageServlet", value = "/loadHomePage-servlet")
public class loadHomePage extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        AutomakerDAO dao= new AutomakerDAO();
        ProductDAO productDAO=new ProductDAO();
        ArrayList<GetTopProductsWithFirstAttribute> listTopProductFrist=productDAO.getTopProductsWithFirstAttribute();
        request.setAttribute("listTopProductFrist",listTopProductFrist);
        ArrayList<Product> listTop4Civic=productDAO.getTop4HondaCivic();
        request.setAttribute("listTop4Civic",listTop4Civic);
        ArrayList<Product> listTop4HRV=productDAO.getTop4HondaBRV();
        request.setAttribute("listTop4HRV",listTop4HRV);
        ArrayList<Automaker> listAutomaker = dao.getAllAutomaker();
        request.setAttribute("listAutomaker",listAutomaker);
        request.getRequestDispatcher("hondaotog3.com/index.jsp").forward(request,response);
    }

    public void destroy() {
    }
}