package com.example.migrateproject.controller;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

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
        int page = 1;
        int recordsPerPage = 5;
        String sortOrder = "";
        if (request.getParameter("sortItem") != null) {
            sortOrder = request.getParameter("sortItem");
        }
        String id = request.getParameter("id");
        if (!id.isEmpty()) {
            try {
                if (request.getParameter("page") != null) {
                    page = Integer.parseInt(request.getParameter("page"));
                }
                String orderBy = "";
                switch (sortOrder) {
                    case "low_to_high":
                        orderBy = "price ASC";
                        break;
                    case "high_to_low":
                        orderBy = "price DESC";
                        break;
                    case "name_increase":
                        orderBy = "product_name ASC";
                        break;
                    case "name_decrease":
                        orderBy = "product_name DESC";
                        break;
                    default:
                        orderBy = "";
                        break;
                }
                int idAutomaker = Integer.parseInt(id);
                ProductDAO productDAO = new ProductDAO();
                AutomakerDAO automakerDAO = new AutomakerDAO();
                List<Product> list = productDAO.getProductPaginationByAutoMakerId(idAutomaker, (page - 1) * recordsPerPage, recordsPerPage, orderBy);
                int totalRecords = productDAO.getTotalRecordsProductByAutoMakerId(idAutomaker);
                int totalPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

                request.setAttribute("listProductById", list);
                request.setAttribute("currentId", id);
                request.setAttribute("currentPage", page);
                request.setAttribute("totalPages", totalPages);
                request.setAttribute("sortItem", sortOrder);
                ArrayList<Product> listProductById = productDAO.getAllProductByAutumakerId(idAutomaker);
//                request.setAttribute("listProductById",listProductById);
                ArrayList<Product> listProduct = productDAO.getAllProduct();
                request.setAttribute("listProduct", listProduct);
                ArrayList<Automaker> listAutomaker = automakerDAO.getAllAutomaker();
                request.setAttribute("listAutomaker", listAutomaker);
                request.getRequestDispatcher("hondaotog3.com/san-pham.jsp").forward(request, response);
            } catch (Exception ex) {

            }
        }
    }

    public void destroy() {
    }
}