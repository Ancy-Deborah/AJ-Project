<%-- 
    Document   : home
    Created on : Oct 2, 2019, 1:47:32 PM
    Author     : Admin
--%>

<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body style="background-image: url(WALL.jpg)">
        <jsp:include page="header.jsp" />
        <div id="link_bar" style="background-color: #FFFFFF;" align="center">  
            <table bgcolor="darkorange" >
                <tr>
                    <td width="10%" height="50"><a class="link" href="hhome.jsp">Home</a></td>
                     <td width="10%" height="50"><a class="link" href="ViewData.jsp">View</a></td>
                     <td width="10%" height="50"><a class="link" href="marks.jsp">Marks</a></td>
                    <td width="10%" height="50"><a class="link" href="CourseReg.jsp">Course</a></td>
                    <td width="20%" height="50"><a class="link" href="StudAdd.jsp">Student</a></td>    
                    <td width="20%" height="50"><a class="link" href="TeachAdd.jsp">Teacher</a></td> 
                    <td width="20%" height="50"><a class="link" href="tt.jsp">TimeTable</a></td>    
                    <td width="20%" height="50"><a class="link" href="Oper.jsp">Delete</a></td>    
                    <td width="20%" height="50"><a class="link" href="Login.jsp">Logout</a></td>
                </tr>
            </table>
             </div>
    <br><br><center>
            
    </body>
</html>
