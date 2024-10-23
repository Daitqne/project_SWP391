/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package com.example.migrateproject.controller;

import com.example.migrateproject.dao.AutomakerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import com.example.migrateproject.dao.ProductDAO;
import com.example.migrateproject.model.Automaker;
import com.example.migrateproject.model.Product;
import dto.GetTopProductsWithFirstAttribute;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author hieun
 */
public class LoadAutomaker extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadAutomaker</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadAutomaker at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AutomakerDAO dao= new AutomakerDAO();
        ProductDAO productDAO=new ProductDAO();
        ArrayList<GetTopProductsWithFirstAttribute> listTopProductFrist=productDAO.getTopProductsWithFirstAttribute();
        request.setAttribute("listTopProductFrist",listTopProductFrist);
        ArrayList<Product> listTop4Civic=productDAO.getTop4HondaCivic();
        request.setAttribute("listTop4Civic",listTop4Civic);
        ArrayList<Product> listTop4BRV=productDAO.getTop4HondaBRV();
        request.setAttribute("listTop4BRV",listTop4BRV);
        ArrayList<Product> listTop4CRV=productDAO.getTop4HondaCRV();
        request.setAttribute("listTop4CRV",listTop4CRV);
        ArrayList<Automaker> listAutomaker = dao.getAllAutomaker();
        request.setAttribute("listAutomaker",listAutomaker);
        request.getRequestDispatcher("hondaotog3.com/index.jsp").forward(request,response);
    }


    private void loadHomePageData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
    /**
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response);
    }

    /**
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
