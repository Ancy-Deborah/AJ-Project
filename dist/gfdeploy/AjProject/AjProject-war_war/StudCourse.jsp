<%-- 
    Document   : StudCourse
    Created on : Oct 6, 2019, 8:27:14 PM
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
    <body>
         <jsp:include page="shome.jsp" />
         <center>
        <b>
        <form>
            <br><br><br>
            <table>
                
                <tr>
                    COURSE REGISTRATION
                </tr>
                
                <tr><td height="50" weidth="10%">SELECT COURSE </td><td><select name="t2" required>
                            <option value=""></option>
                            <option>PYTHON</option>
                            <option>R LANGUAGE</option>
                            <option>C LANGUAGE</option>
                             </select><br></td>
                    <%String nam=(String)session.getAttribute("user");%>
                  <tr><td height="50" weidth="10%">STUDENT NAME</td><td><input type="text" name="t3" required><br></td> </tr>
                <tr><td height="50" weidth="10%">DEPARTMENT NO</td><td><input type="text" name="t4" value="<%out.print(nam);%>"><br></td> </tr>  
                 <tr><td height="50" weidth="10%">DEPARTMENT</td><td><input type="text" name="t5" required><br></td> </tr>
               <tr><td height="50" weidth="10%">SELECT YEAR </td><td><select name="t1" required>
                           <option value=""></option>
                            <option>FIRST YEAR</option>
                            <option>SECOND YEAR</option>
                            <option>THIRD YEAR</option>
                             </select><br></td>
                
            </table>
            <input type="submit" name="s1" value="submit">
          
            <%
                NewSessionBeanLocal newSessionBean = null;
                Context c = new InitialContext();
                newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");
                
                String yr = request.getParameter("t1");
                String cname = request.getParameter("t2");
                String sname = request.getParameter("t3");
                String deptno = request.getParameter("t4");
                String dept = request.getParameter("t5");
                
                if (request.getParameter("s1") != null) {
                    newSessionBean.RegCo(cname, sname,deptno,dept,yr);
                    out.println("\n");
                    out.println("Registered Successfully");

                }
            %>
        </form>
        </b>
         </center>
    </body>
</html>
