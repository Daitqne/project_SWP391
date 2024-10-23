package com.example.migrateproject.controller;

import com.example.migrateproject.dao.AutomakerDAO;
import com.example.migrateproject.dao.InfoProductDAO;
import com.example.migrateproject.dao.ProductDAO;
import com.example.migrateproject.model.Automaker;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ProductItemServlet", value = "/ProductItemServlet")
public class ProductItem extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("productId"));
        ProductDAO productDAO = new ProductDAO();
        AutomakerDAO automakerDAO= new AutomakerDAO();
        InfoProductDAO info = productDAO.getProductByProductId(id);
        request.setAttribute("product",info.getProduct());
        request.setAttribute("listAttr",info.getAttribute());
        request.setAttribute("listColor",info.getCarColor());
        ArrayList<Automaker> listAutomaker = automakerDAO.getAllAutomaker();
        request.setAttribute("listAutomaker",listAutomaker);
        request.getRequestDispatcher("/hondaotog3.com/honda.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}