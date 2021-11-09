<%-- 
    Document   : shome
    Created on : Oct 6, 2019, 4:35:36 PM
    Author     : Admin
--%>

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
                    <td width="5%" height="50"><a class="link" href="hhome.jsp">Home</a></td>
                     <td width="5%" height="50"><a class="link" href="ViewMarks.jsp">Marks</a></td>
                     <td width="5%" height="50"><a class="link" href="Fee.jsp">Payment</a></td>
                     <td width="5%" height="50"><a class="link" href="StudCourse.jsp">Registration</a></td>
                     <td width="5%" height="50"><a class="link" href="StudUpdate.jsp">Update</a></td>    
                    <td width="5%" height="50"><a class="link" href="Viewtt.jsp">TimeTable</a></td> 
                     <td width="5%" height="50"><a class="link" href="Login.jsp">Logout</a></td>
                    
                </tr>
               
            </table>
            
        
          </div>
  
 
    </body>
</html>
