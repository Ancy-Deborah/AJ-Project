<%-- 
    Document   : TeachAdd
    Created on : Oct 5, 2019, 6:11:13 PM
    Author     : Admin
--%>

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
    <body>
        <jsp:include page="home.jsp" />
    <center>
        <b>
        <form>
            <br><br><br>
            <table>
                
                <tr>
                    ADD TEACHER
                </tr>
                 <tr><td height="50" weidth="10%">TEACHER ID </td><td><input type="text" name="t1"><br></td> </tr>
                <tr><td height="50" weidth="10%">TEACHER NAME</td><td><input type="text" name="t2"><br></td> </tr>
                <tr><td height="50" weidth="10%">BLOOD GROUP</td><td><input type="text" name="t3"><br></td> </tr>
                <tr><td height="50" weidth="10%">CONTACT NO</td><td><input type="text" name="t4"><br></td> </tr>
                <tr><td height="50" weidth="10%">DEPARTMENT </td><td><select name="t7">
                            <option>Please Select</option>
                            <option>BCA</option>
                            <option>BBA</option>
                            <option>Bcom</option>
                            <option>VisCom</option>
                            <option>MSc IT</option>
                        </select><br></td>
                    
                </tr>
                
            </table>
            <input type="submit" name="s1" value="submit">
          
            <%
                NewSessionBeanLocal newSessionBean = null;
                Context c = new InitialContext();
                newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");

                String tid = request.getParameter("t1");
                String tname = request.getParameter("t2");
                String bg = request.getParameter("t3");
                String cno = request.getParameter("t4");
                String dept = request.getParameter("t7");
                
                if (request.getParameter("s1") != null) {
                    newSessionBean.teachAdd(tid, tname,dept,cno,bg);
                    out.println("\n");
                    out.println("\nTeacher details added successfully");

                }
            %>


        </form>
            </b>
    </center>

    </body>
</html>
