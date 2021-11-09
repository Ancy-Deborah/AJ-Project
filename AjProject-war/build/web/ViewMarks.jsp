<%-- 
    Document   : ViewMarks
    Created on : Oct 6, 2019, 5:17:11 PM
    Author     : Admin
--%>

<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.NewSessionBeanLocal"%>
<%@page import="ss.NewSessionBeanLocal"%>
<%@page import="ee.AddMarks"%>
<%@page import="java.util.List"%>
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
        <br><br>
        <%
            NewSessionBeanLocal newSessionBean = null;
            Context c = new InitialContext();
            newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");

           %>
           <b>        <table border="1" cellpadding="5" style="border-collapse: collapse">
            <tr></tr>
            <tr>
                <th>S.NO</th>
                <th>STUDENT ID</th>
                <th>DEPARTMENT</th>
                <th>NAME</th>
                <th>ADVANCED JAVA</th>
                <th>RESEARCH METHODOLOGY</th>
                <th>NETWORKS</th>
                <th>ELECTIVE</th>
                <th>VISUAL PROGRAMMING</th>
                <th>AVERAGE</th>
                <th>TOTAL</th>
            </tr>
            <%
                String n=(String)session.getAttribute("user");
                List<AddMarks> mark = newSessionBean.findMarks(n);
                int count = 1;
                
                for (AddMarks j : mark) {%>
               <tr>
                <td><%=count + "."%></td>
                <td><%=j.getDeptno()%></td>
                <td><%=j.getDept()%></td>
                <td><%=j.getName()%></td>
                <td><%=j.getSub1()%></td>
                <td><%=j.getSub2()%></td>
                <td><%=j.getSub3()%></td>
                <td><%=j.getSub4()%></td>
                <td><%=j.getSub5()%></td>
                <td><%=j.getAg()%></td>
                <td><%=j.getTot()%></td>
            </tr>
            
            <%count = count + 1;
                                }%>
           
        </table>
           </b>
    </center>
    </body>
</html>
