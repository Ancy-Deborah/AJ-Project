<%-- 
    Document   : Login
    Created on : Oct 2, 2019, 10:32:36 AM
    Author     : Admin
--%>

<%@page import="javax.naming.NamingException"%>
<%@page import="ee.Register"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.management.Query"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.NewSessionBeanLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url(WALL.jpg)">
        <b>
    <CENTER>
        <h1 style="color:#8533ff" >STUDENT MANAGEMENT SYSTEM</h1>

        <form>
            <br><br><br>
            <table>
                <tr>LOGIN</tr>
                <tr><td>DEPARTMENT NO</td>
                    <td><input type="text" name="t1" ></td></tr>
                <tr><td> PASSWORD</td>
                 <td><input type="password" name="t2"></td></tr>
                </table>
            <br>
            &emsp; &emsp; &emsp; &emsp;&emsp;&emsp13;<input type="submit" name="s1" value="Submit"><br><br>
                
                &emsp;&emsp;&emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp;&emsp13;&emsp14;&nbsp;&nbsp;<a href="Registration.jsp" name="hh">Click to register</a></p></CENTER>
            </b>

            <%
                String deptno = request.getParameter("t1");
                String password = request.getParameter("t2");

                if (request.getParameter("s1") != null) {
                    NewSessionBeanLocal newSessionBean = null;

                    try {
                        Context c = new InitialContext();
                        newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");

                    } catch (NamingException ne) {
                    }

                    if (deptno.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
                        
                        session.setAttribute("user", deptno);
                        RequestDispatcher rd = request.getRequestDispatcher("hhome.jsp");
                        rd.forward(request, response);
                    } else {
                        Register l = newSessionBean.findByID(deptno);
                        if (l == null) {
                            out.println("<h3 align=center><b>INVALID: DEPTNO DOES NOT EXISTS</b></h3>");
                        } else {
                            if (l.getPassword().equals(password)) {
                                session.setAttribute("user", deptno);
                                RequestDispatcher rd = request.getRequestDispatcher("shome.jsp");
                                rd.forward(request, response);
                            } else {
                                out.println("<h3 align=center><b>INVALID: PASSWORD</b></h3>");
                            }
                        }
                 
                   }
                }

            %>      

    </b>
            
        </form>
    </body>
</html>
