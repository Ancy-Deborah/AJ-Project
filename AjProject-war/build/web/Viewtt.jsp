<%-- 
    Document   : Viewtt
    Created on : Oct 7, 2019, 1:38:46 PM
    Author     : Admin
--%>

<%@page import="ee.TimeTable"%>
<%@page import="java.util.List"%>
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
        <jsp:include page="shome.jsp"></jsp:include>
                             <%
                            NewSessionBeanLocal newSessionBean = null;
                            Context c = new InitialContext();
                            newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");

                           %>
                           <br><br><br>
    <center>
                        <table border="1" cellpadding="5" style="border-collapse: collapse">
                            <tr></tr>
                            <tr>
                                <th>S.NO</th>   
                                <th>DATE</th>
                                <th>SUBJECT ID</th> 
                                <th>SUBJECT NAME</th>
                                <th>DEPARTMENT</th>
                                <th>SESSION</th>    
                                <th>TIMINGS</th>
                              
                            </tr>
                            <%
                                List<TimeTable> jobs = newSessionBean.findTimeTable();
                                int count = 1;
                                for (TimeTable j : jobs) {%>
                            <tr>
                                <td><%=count + "."%></td>
                                <td><%=j.getDat()%></td>
                                <td><%=j.getScode()%></td>
                                <td><%=j.getTitle()%></td>
                                <td><%=j.getDept()%></td>
                                <td><%=j.getSess()%></td>
                                <td><%=j.getTim()%></td>
                            </tr>
                            <%count = count + 1;
                        }%>
                            

                                
                        </table>
    </center>

    </body>
</html>
