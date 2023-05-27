/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.user.UserDAO;
import sample.user.UserDTO;
import sample.user.UserError;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CreateController", urlPatterns = {"/CreateController"})
public class CreateController extends HttpServlet {

    private static final String SUCCESS_US = "login.html";
    private static final String ERROR_US = "createAccount.jsp";
    private static final String SUCCESS_AD = "admin.jsp";
    private static final String ERROR_AD = "error.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR_US;
        UserError userError = new UserError();
        try {
            String userID = request.getParameter("userID");
            String fullName = request.getParameter("fullName");
            String roleID = request.getParameter("roleID");
            String password = request.getParameter("password");
            String rolepage = request.getParameter("rolepage");

//          validation 
            UserDAO dao = new UserDAO();
            boolean checkValidation = true;
//            boolean checkExisted = dao.checkExisted(userID);
//            if (checkExisted) {
//                userError.setUserIDError("Duplicate userID");
//                checkValidation = false;
//            }
            if (userID.length() > 10 || userID.length() < 2) {
                userError.setUserIDError("UserID [2,10]");
                checkValidation = false;
            }
            if (fullName.length() > 20 || fullName.length() < 5) {
                userError.setUserIDError("UserID [5,10]");
                checkValidation = false;
            }
            
            if (checkValidation) {
                UserDTO user = new UserDTO(userID, fullName, roleID, password);
                boolean checkInsert = dao.insertV2(user);
                if (checkInsert) {
                    if("US".equals(rolepage)) {
                        url = SUCCESS_US;
                    }
                    else {
                        url = SUCCESS_AD;
                    }
                } else {
                    request.setAttribute("ERROR", "Unknow Error");
                }
            } else {
                request.setAttribute("USER_ERROR", userError);
            }
        } catch (Exception e) {
            log("Error at CreatController" + e.toString());
            if (e.toString().contains("duplicated")) {
                userError.setUserIDError("Trung khoa r kia");
                request.setAttribute("USER_ERROR", userError);
            }
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
