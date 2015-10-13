/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pinki Meggi
 */
@WebServlet(name = "ControllerServlet",loadOnStartup = 1, urlPatterns = {
    "/login", 
    "/logout",
    "/home",
    "/eqa",
    "/register", 
    "/viewResult", 
    "/viewReport"})
public class ControllerServlet extends HttpServlet {

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

        String userPath = request.getServletPath();

        if (userPath.equals("/eqa")) {
            String type = request.getParameter("type");
            String uType = request.getParameter("u");
            if (type.equals("HIV"))
                userPath="/HIVEQAList";
            else if (type.equals("Malaria"))
                    userPath="/MalariaEQAList";
                else if (type.equals("MalariaMicro"))
                    userPath="/MalariaMicroEQAList";
                    else if (type.equals("HIVPCR"))
                        userPath="/HIVPCREQAList";
                        else if (type.equals("TB"))
                            userPath="/TBEQAList";
            userPath= "/"+uType+userPath; 
        }
        else
            if (userPath.equals("/register")) {
            String type = request.getParameter("type");
            String uType = request.getParameter("u");
            if (type.equals("HIV"))
                userPath="/RegisterHIV";
            else if (type.equals("Malaria"))
                    userPath="/RegisterMalaria";
                else if (type.equals("MalariaMicro"))
                    userPath="/RegisterMalariaMicro";
                    else if (type.equals("HIVPCR"))
                        userPath="/RegisterHIVPCR";
                        else if (type.equals("TB"))
                            userPath="/RegisterTB";
            userPath= "/"+uType+userPath; 
        }
        else
            if (userPath.equals("/viewResult")) {
            String type = request.getParameter("type");
            String uType = request.getParameter("u");
            if (type.equals("HIV"))
                userPath="/ViewHIV";
            else if (type.equals("Malaria"))
                    userPath="/ViewMalaria";
                else if (type.equals("MalariaMicro"))
                    userPath="/ViewMalariaMicro";
                    else if (type.equals("HIVPCR"))
                        userPath="/ViewHIVPCR";
                        else if (type.equals("TB"))
                            userPath="/ViewTB";
            userPath= "/"+uType+userPath; 
            }
        else
        if (userPath.equals("/home")) {
            String uType = request.getParameter("u");
            userPath="/"+uType+"/index";
        }
        else{
            if (userPath.equals("/logout")) {
                userPath="/index";
                String url = "/" + userPath + ".jsp";
                try {
                    request.getRequestDispatcher(url).forward(request, response);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
        // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + ".jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
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

        String userPath = request.getServletPath();

        if (userPath.equals("/login")) {
            
            String username = request.getParameter("username");
            String password = request.getParameter("password");
           
            if (username.equals("supervisor") && password.equals("123456"))
                userPath = "/Supervisor";
            else
                if (username.equals("coordinator") && password.equals("123456"))
                    userPath = "/Coordinator";
            else
                if (username.equals("cltm") && password.equals("123456"))
                    userPath = "/CLTM";
        }    
               // use RequestDispatcher to forward request internally
        String url = "/WEB-INF/view" + userPath + "/index.jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
