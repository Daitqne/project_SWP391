package com.example.migrateproject.controller;

import java.io.*;
import java.util.ArrayList;

import com.example.migrateproject.dao.AutomakerDAO;
import com.example.migrateproject.dao.ProductDAO;
import com.example.migrateproject.model.Automaker;
import com.example.migrateproject.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "ProductSeverletServlet", value = "/ProductSeverlet")
public class ProductSeverlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String id=request.getParameter("id");
        if(!id.isEmpty()){
            try{
                int idAutomaker=Integer.parseInt(id);
                ProductDAO productDAO=new ProductDAO();
                AutomakerDAO automakerDAO=new AutomakerDAO();
                ArrayList<Product> listProductById=productDAO.getAllProductByAutumakerId(idAutomaker);
                request.setAttribute("listProductById",listProductById);
                ArrayList<Product> listProduct= productDAO.getAllProduct();
                request.setAttribute("listProduct",listProduct);
                ArrayList<Automaker> listAutomaker=automakerDAO.getAllAutomaker();
                request.setAttribute("listAutomaker",listAutomaker);
                request.getRequestDispatcher("hondaotog3.com/san-pham.jsp").forward(request,response);
            }catch (Exception ex){

            }
        }
    }

    public void destroy() {
    }
}