<%-- 
    Document   : Registration
    Created on : Oct 2, 2019, 12:24:43 PM
    Author     : Admin
--%>

<%@page import="javax.naming.InitialContext"%>
<%@page import="ss.NewSessionBeanLocal"%>
<%@page import="javax.naming.Context"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url(WALL.jpg)">
        <div></div>
    <center>
        <form>
            <br>
            <br><br>
            <table>
                <tr>
                    REGISTER TO LOGIN
                </tr>
                <tr>
                    <td>NAME</td><td><input type="text" name="t1"><br></td>
                </tr>
                <tr>
                    <td>DEPTNO</td><td><input type="text" name="t4"><br></td>
                </tr>
                <tr>
                    <td>PASSWORD</td><td><input type="password" name="t2"><br></td>
                </tr>
                <tr>
                    <td>CONFIRM PASSWORD</td><td><input type="password" name="t3"><br></td>
                </tr>

            </table>
            <input type="submit" name="s1" value="submit">
            <a href="Login.jsp" >login</a>
            <%
                NewSessionBeanLocal newSessionBean = null;
                Context c = new InitialContext();
                newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");

                String name=request.getParameter("t1");
                String deptno=request.getParameter("t4");
                String password=request.getParameter("t2");
                String cpassword =request.getParameter("t3");
                
                if (request.getParameter("s1") != null) {
                    newSessionBean.add(deptno, name, password, cpassword);
                    out.println("\n");
                    out.println("\nRegistered successfully");
                    
                }
            %>
        </form>
    </body>
</html>
