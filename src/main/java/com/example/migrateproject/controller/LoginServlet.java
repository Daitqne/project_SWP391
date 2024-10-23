/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package com.example.migrateproject.controller;

import com.example.migrateproject.Status.StatusLogin;
import com.example.migrateproject.dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.GeneralSecurityException;
import java.util.Collections;

import com.example.migrateproject.model.ReturnData;
import com.example.migrateproject.validate.Validate;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import com.example.migrateproject.model.LoginResult;
import com.example.migrateproject.model.User;

/**
 *
 * @author hieun
 */
public class LoginServlet extends HttpServlet {

    private static final String CLIENT_ID = "392410667722-jfu6g73qfmspijgmvaatitre6qre0emg.apps.googleusercontent.com";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("hondaotog3.com/login.jsp");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("credential") != null) {
            UserDAO dao=new UserDAO();
            String idTokenString = request.getParameter("credential");
            JsonFactory jsonFactory = JacksonFactory.getDefaultInstance();
            GoogleIdTokenVerifier verifier = null;

            try {
                verifier = new GoogleIdTokenVerifier.Builder(GoogleNetHttpTransport.newTrustedTransport(), jsonFactory)
                        .setAudience(Collections.singletonList(CLIENT_ID))
                        .build();
            } catch (GeneralSecurityException e) {
                e.printStackTrace();
            }

            GoogleIdToken idToken = null;
            try {
                idToken = verifier.verify(idTokenString);
            } catch (GeneralSecurityException e) {
                e.printStackTrace();
            }

            if (idToken != null) {
                GoogleIdToken.Payload payload = idToken.getPayload();

                String userId = payload.getSubject();
                String email = payload.getEmail();
                String name = (String) payload.get("name");

                // Lưu thông tin người dùng vào session (nếu cần)
//                request.getSession().setAttribute("user", name);
//                request.getSession().setAttribute("email", email);
//                System.out.println(name);
                System.out.println(email);
                User userGoogle = dao.getUserLoginByGmail(email);
                if(userGoogle != null) {
                    Cookie userCookie = new Cookie("username", userGoogle.getUser_name());
                    userCookie.setMaxAge(60 * 60 * 24); // Cookie tồn tại trong 1 ngày (đơn vị giây)
                    response.addCookie(userCookie);
                    HttpSession session=request.getSession();
                    session.setAttribute("user",userGoogle);
                    session.setMaxInactiveInterval(30*30*60);
                    if(userGoogle.getRole_id()!=0){
                        RequestDispatcher dispatcher= request.getRequestDispatcher("/Home-servlet");
                        dispatcher.forward(request,response);
                    } else {
                        request.setAttribute("errorMessageUserName", "Invalid login. Please register");
                        request.getRequestDispatcher("/hondaotog3.com/login.jsp").forward(request, response);
                    }
                }
            }
        } else {
            String userName=request.getParameter("username");
            String password=request.getParameter("password");
            ReturnData userNameCheck= Validate.inputIsNull(userName);

            if(userNameCheck.getReturnCode()==1){
                request.setAttribute("errorMessageUserName", userNameCheck.getReturnMessage());
                request.getRequestDispatcher("/hondaotog3.com/login.jsp").forward(request, response);
            }
            ReturnData passwordCheck= Validate.inputIsNull(password);
            if(passwordCheck.getReturnCode()==1){
                request.setAttribute("errorMessagePassword", userNameCheck.getReturnMessage());
                request.getRequestDispatcher("/hondaotog3.com/login.jsp").forward(request, response);
            }
            LoginResult l= checkLogin(userName, password);
            if(l.getStatus() == StatusLogin.LoginSucess){
                Cookie userCookie = new Cookie("username", l.getUser().getUser_name());
                userCookie.setMaxAge(60 * 60 * 24); // Cookie tồn tại trong 1 ngày (đơn vị giây)
                response.addCookie(userCookie);
                HttpSession session=request.getSession();
                session.setAttribute("user",l.getUser());
                session.setMaxInactiveInterval(30*30*60);
                if(l.getUser().getRole_id()!=0){
                    RequestDispatcher dispatcher= request.getRequestDispatcher("/Home-servlet");
                    dispatcher.forward(request,response);
                }
//            switch (l.getUser().getRole_id()) {
//                case 1:
//                    request.setAttribute("user", l.getUser());
//                    request.getRequestDispatcher("/hondaotog3.com/index.jsp").forward(request, response);
//                    RequestDispatcher dispatcher = request.getRequestDispatcher("/Home-servlet");
//                    dispatcher.forward(request, response);
//                    break;
//                case 2:
//                    request.getRequestDispatcher("/hondaotog3.com/index.jsp").forward(request, response);
//                    break;
//                case 3:
//                    request.getRequestDispatcher("/hondaotog3.com/index.jsp").forward(request, response);
//                    break;
//            }
            }
        }
    }

    public LoginResult checkLogin(String userName,String password){
        String passBam= Validate.getEncryptString(password).toString();
        UserDAO dao=new UserDAO();
        User u=dao.getUserLogin(userName, passBam);
        if(u!=null){
            return new LoginResult(StatusLogin.LoginSucess, u);
        }else{
            return new LoginResult(StatusLogin.LoginFaild, u);
        }
    }


}
