<%-- 
    Document   : ViewData
    Created on : Oct 5, 2019, 7:42:59 PM
    Author     : Admin
--%>

<%@page import="ee.TimeTable"%>
<%@page import="ee.AddCourse"%>
<%@page import="ee.AddMarks"%>
<%@page import="ee.AddTeach"%>
<%@page import="ee.AddStud"%>
<%@page import="java.util.List"%>
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
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <jsp:include page="home.jsp" />
    <center>
        <b>
            <form>
                <br>
                <div class="row">
                    <div class="column">
                        <table>
                            <tr></tr>

             <tr> <td width="10%" height="50"><input type="submit" name="s1" class="myButton" value="Student details"></td></tr>
                     <tr><td width="10%" height="50"><input type="submit" name="s2" class="myButton" value="Teacher details"></td></tr>
                            <tr> <td width="10%" height="50"><input type="submit" name="s3" class="myButton" value="Mark details"></td></tr>              <tr><td width="10%" height="50"><input type="submit" name="s4" class="myButton" value="Course details"></td></tr>
                            <tr><td width="10%" height="50"><input type="submit" name="s5" class="myButton" value="Time Table"></td></tr>
                            
                        </table>

                    </div>
                    <div class="column2">
                        <%
                            NewSessionBeanLocal newSessionBean = null;
                            Context c = new InitialContext();
                            newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");

                            if (request.getParameter("s2") != null) {%>
                        <table border="1" cellpadding="5" style="border-collapse: collapse">
                            <tr></tr>
                            <tr>
                                <th>S.NO</th>
                                <th>TEACHER ID</th>
                                <th>DEPARTMENT</th>
                                <th>NAME</th>
                                <th>CONTACT NO</th>    
                                <th>BLOOD GROUP</th>
                            </tr>
                            <%
                                List<AddTeach> jobs = newSessionBean.findAllTeachers();
                                int count = 1;
                                for (AddTeach j : jobs) {%>
                            <tr>
                                <td><%=count + "."%></td>
                                <td><%=j.getTid()%></td>
                                <td><%=j.getDept()%></td>
                                <td><%=j.getTname()%></td>
                                <td><%=j.getCon()%></td>
                                <td><%=j.getBg()%></td>

                            </tr>
                            <%count = count + 1;
                                }%>
                            <%

                                }%>
                        </table>

                        <% if (request.getParameter("s1") != null) {%>
                        <table border="1" cellpadding="5" style="border-collapse: collapse">
                            <tr></tr>
                            <tr>
                                <th>S.NO</th>
                                <th>STUDENT ID</th>
                                <th>DEPARTMENT</th>
                                <th>NAME</th>
                                <th>BLOOD GROUP</th>
                                <th>FATHER NAME</th>
                                <th>MOTHER NAME</th>
                                <th>CONTACT</th>
                            </tr>
                            <%
                                List<AddStud> jobs = newSessionBean.findAllStudents();
                                int count = 1;
                                for (AddStud j : jobs) {%>
                            <tr>
                                <td><%=count + "."%></td>
                                <td><%=j.getDeptno()%></td>
                                <td><%=j.getDept()%></td>
                                <td><%=j.getName()%></td>
                                <td><%=j.getBgroup()%></td>
                                <td><%=j.getFname()%></td>
                                <td><%=j.getMname()%></td>
                                <td><%=j.getContact()%></td>
                            </tr>
                            <%count = count + 1;
                                }%>
                            <%

                                }
                            %>
                        </table>
                        <%if (request.getParameter("s3") != null) {%>
                        <table border="1" cellpadding="5" style="border-collapse: collapse">
                            <tr></tr>
                            <tr>
                                <th>S.NO</th>
                                <th>STUDENT ID</th>
                                <th>DEPARTMENT</th>
                                <th>NAME</th>
                                <th>AJ</th>
                                <th>VP</th>
                                <th>NA</th>
                                <th>RM</th>
                                <th>ET</th>
                                <th>TOTAL</th>
                                <th>AVERAGE</th>
                            </tr>
                            <%
                                List<AddMarks> mark = newSessionBean.findMarks();
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
                                <td><%=j.getTot()%></td>
                                <td><%=j.getAg()%></td>
                            </tr>
                            <%count = count + 1;
                                }%>
                            <%

                                }
                            %>
                        </table>
                        <%if (request.getParameter("s4") != null) {%>
                        <table border="1" cellpadding="5" style="border-collapse: collapse">
                            <tr></tr>
                            <tr>
                                <th>S.NO</th>
                                <th>COURSE ID</th>
                                <th>COURSE NAME</th>
                                <th>DEPARTMENT</th>
                                <th>DURATION</th>

                            </tr>
                            <%
                                List<AddCourse> co = newSessionBean.findCourse();
                                int count = 1;
                                for (AddCourse j : co) {%>
                            <tr>
                                <td><%=count + "."%></td>
                                <td><%=j.getCid()%></td>
                                <td><%=j.getDept()%></td>
                                <td><%=j.getCname()%></td>
                                <td><%=j.getDuration()%></td>


                            </tr>
                            <%count = count + 1;
                                }%>
                            <%

                                }
                            %>
                        </table>

                        <% if (request.getParameter("s5") != null) {%>
                        <table border="1" cellpadding="5" style="border-collapse: collapse">
                            <tr></tr>
                            <tr>
                                <th>S.NO</th>
                                <th>SUBJECT CODE</th>
                                <th>SUBJECT NAME</th>
                                <th>DATE</th>
                                <th>SESSION</th>    
                                <th>TIMINGS </th>
                                <th>DEPARTMENT</th>
                            </tr>
                            <%
                                List<TimeTable> jobs = newSessionBean.findTimeTable();
                                int count = 1;
                                for (TimeTable j : jobs) {%>
                            <tr>
                                <td><%=count + "."%></td>
                                <td><%=j.getScode()%></td>
                                <td><%=j.getTitle()%></td>
                                <td><%=j.getDat()%></td>
                                <td><%=j.getSess()%></td>
                                <td><%=j.getTim()%></td>
                                <td><%=j.getDept()%></td>

                            </tr>
                            <%count = count + 1;
                                    }

                                }%>






                        </table>
                    </div>
                </div>
            </form>
        </b>

    </body>
</html>
