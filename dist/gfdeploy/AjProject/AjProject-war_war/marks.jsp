<%-- 
    Document   : marks
    Created on : Oct 5, 2019, 12:01:21 PM
    Author     : Admin
--%>

<%@page import="ee.AddStud"%>
<%@page import="java.util.List"%>
<%@page import="ee.AddMarks"%>
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
        <%! AddStud r;%>
        <%
            NewSessionBeanLocal newSessionBean = null;
            Context c = new InitialContext();
            newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");
            String n = request.getParameter("s1");
            if (request.getParameter("search") != null) {

                r = newSessionBean.search(n);

            }%>
    <center>
        <h3>Enter Student Marks</h3>
        <form>
            <b>
                <table align="center">
                    <tr>
                        <td width="40%" height="30"  >DEPTNO</td><td> <select name="s1">
                                <%   String tno = request.getParameter("s1");

                                    List<AddStud> tt = newSessionBean.fetchtno();
                                    for (int i = 0; i < tt.size(); i++) {%>
                                <option> <%= tt.get(i)%></option><%

                                    }%>
                            </select> </td><td><input type="submit" name="search" value="search" ></td></tr>


                    <td width="20%" height="50" >STUDENT NAME </td><td> <input type="text" name="t1" value="<% if (r != null) {
                            out.println(r.getName());
                        }  %>"></td></tr>
                                                                                         <tr>   <td width="20%" height="50"  >DEPARTMENT NAME</td><td> <input type="text" name="t3"value="<% if (r != null) {
                            out.println(r.getDept());
                        }%>"></td></tr>
                    <tr>  <td width="20%" height="50"  >ADVANCED JAVA</td><td> <input type="text" name="t4"></td></tr>
                    <tr>  <td width="20%" height="50"  >RESEARCH METHODOLOGY</td><td> <input type="text" name="t5"></td></tr>
                    <tr> <td width="20%" height="50"  >NETWORKS</td><td> <input type="text" name="t6"></td></tr>
                    <tr>  <td width="20%" height="50"  >ELECTIVE</td><td> <input type="text" name="t7"></td></tr>
                    <tr> <td width="20%" height="50"  >VISUAL PROGRAMMING</td><td> <input type="text" name="t8"></td></tr>                
                </table>
                <input type="submit" name="b1" value="Submit"></b>
        </form>
        <%

            if (request.getParameter("b1") != null) {
                String name = request.getParameter("t1");
                String deptno = request.getParameter("t2");
                String dept = request.getParameter("t3");
                String m1 = request.getParameter("t4");
                String m2 = request.getParameter("t5");
                String m3 = request.getParameter("t6");
                String m4 = request.getParameter("t7");
                String m5 = request.getParameter("t8");

                int tot = Integer.parseInt(m1);
                tot += Integer.parseInt(m2);
                tot += Integer.parseInt(m3);
                tot += Integer.parseInt(m4);
                tot += Integer.parseInt(m5);
                int avg = tot / 5;
                String t = Integer.toString(tot);
                String a = Integer.toString(avg);

                session = request.getSession();
                session.setAttribute("uname", name);

                newSessionBean.mark(name, deptno, dept, m1, m2, m3, m4, m5, a, t);
                out.println("Marks has been added successfully");
            }
        %>
    </center>
</body>
</html>
