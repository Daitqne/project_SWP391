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
                // hien tai day la list dau tien
                // step 1: code 1 ham phan trang qua list by id (id, pageNum, itmePerpage, ... )
                // step 2: co droplist sort => viet ham sortBy, sau do long vao thang list paging
                int count=productDAO.countProductByAutomakerId(idAutomaker);
                int endPage=count/6;
                if(count%6!=0){
                    endPage++;
                }
                request.setAttribute("endP",endPage);
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