package com.example.migrateproject.controller;

import java.io.*;
import java.util.ArrayList;

import com.example.migrateproject.dao.AutomakerDAO;
import com.example.migrateproject.dao.CustomerDAO;
import com.example.migrateproject.dao.ProductDAO;
import com.example.migrateproject.model.Automaker;
import com.example.migrateproject.model.User;
import dto.Customer;
import dto.GetTopProductsWithFirstAttribute;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "HomeServlet", value = "/Home-servlet")
public class Home extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException,IOException {
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        checkUserIsNull(user,request,response);
        switch (user.getRole_id()){
            case 1:
                try{
                    AutomakerDAO dao= new AutomakerDAO();
                    ProductDAO productDAO=new ProductDAO();
                    ArrayList<Automaker> listAutomaker = dao.getAllAutomaker();
                    request.setAttribute("listAutomaker",listAutomaker);
                    ArrayList<GetTopProductsWithFirstAttribute> listTopProductFrist=productDAO.getTopProductsWithFirstAttribute();
                    request.setAttribute("listTopProductFrist",listTopProductFrist);
                    request.getRequestDispatcher("/hondaotog3.com/index.jsp").forward(request,response);
                }catch (Exception ex){

                }
                break;
            case 2:
                try {
                    request.getRequestDispatcher("/hondaotog3.com/login.jsp").forward(request, response);
                }catch (Exception ex){

                }
                break;
            case 3:
                try {
                    CustomerDAO customerDAO=new CustomerDAO();
                    ArrayList<Customer> listCustomer=customerDAO.getAllCustomer();
                    request.setAttribute("listCustomer",listCustomer);
                    request.getRequestDispatcher("/hondaotog3.com/accountList.jsp").forward(request, response);
                }catch (Exception ex){
                    request.getRequestDispatcher("/hondaotog3.com/login.jsp").forward(request, response);
                }
        }

    }

    public void checkUserIsNull(User user,HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        if(user==null){
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/hondaotog3.com/login.jsp");
            requestDispatcher.forward(request,response);
        }
    }
    public void destroy() {
    }
}