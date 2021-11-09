<%-- 
    Document   : Oper
    Created on : Oct 7, 2019, 2:53:20 PM
    Author     : Admin
--%>

<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.NewSessionBeanLocal"%>
<%@page import="ee.AddStud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="home.jsp"></jsp:include>
         <%! AddStud r; %>
       <%NewSessionBeanLocal newSessionBean = null;
            Context c = new InitialContext();
            newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");
       
            String id = request.getParameter("t1");
            String name = request.getParameter("t2");
            String phn = request.getParameter("t3");
            String dept = request.getParameter("t4");
            String fname = request.getParameter("t5");
            String mname = request.getParameter("t6");
            String bp = request.getParameter("t7");
            
            if (request.getParameter("b1") != null) {

                r = newSessionBean.search(id);
               
            } 
       %>
       <h3>SEARCH UPDATE AND DELETE STUDENT DATA</h3>
       <form><b>
           <table><tr><td>
                       DEPARTMENT NO</td><td><input type="text" name="t1" value="<% if (r != null) 
                    out.println(r.getDeptno());
                       %>"></td></tr><tr><td>
                       STUDENT NAME</td><td><input type="text" name="t2" value="<% if (r != null) 
                    out.println(r.getName()); 
                       %>"></td></tr><tr><td>
                       CONTACT</td><td><input type="text" name="t3" value="<% if (r != null) 
                    out.println(r.getContact());
                %>"></td></tr><tr><td>
                       DEPARTMENT </td><td> <input type="text" name="t4" value="<% if(r!=null) 
                           out.println(r.getDept());%>"> </td></tr><tr><td>
               FATHER NAME</td><td><input type="text" name="t5" value="<% if (r != null)
                    out.println(r.getFname());
               %>"></td></tr><tr><td>
                   MOTHER NAME</td><td><input type="text" name="t6" value="<% if (r != null)
                    out.println(r.getMname());  %>"></td></tr><tr><td>
                   BLOOD GROUP</td><td><input type="text" name="t7" value="<% if (r != null)
                    out.println(r.getBgroup());
               %>"></td></tr><tr><td>
           <input type="submit" value="Search"  name="b1">
            <input type="submit" value="Delete"  name="b2">
            <input type="submit" value="Update"  name="b3">
            
       </form>
            <%
            
            if (request.getParameter("b2") != null) {

                newSessionBean.delete(id);
                out.println("Deleted successfully");

            }

            if (request.getParameter("b3") != null) {
                newSessionBean.update( id,  name,  dept,  fname,  mname,  bp,  phn);
                out.println("Updated successfully");
                
            }


        %>

    </body>
</html>
