<%-- 
    Document   : tt
    Created on : Oct 7, 2019, 11:21:27 AM
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
        <jsp:include page="home.jsp"></jsp:include>
        <center>
        <b>
        <form>
            <br><br><br>
            <table>
                
                <tr>
                    ADD TIMETABLE
                </tr>
                 
                <tr><td height="50" weidth="10%">SUBJECT ID </td><td><input type="text" name="t2"><br></td> </tr>
                <tr><td height="50" weidth="10%">SUBJECT TITLE</td><td><input type="text" name="t3"><br></td> </tr>
                <tr><td height="50" weidth="10%">EXAM DATE</td><td><input type="date" name="t4"><br></td></tr>
                <tr><td height="50" weidth="10%">EXAM SESSION</td><td><input type="text" name="t5"><br></td> </tr> 
                <tr><td height="50" weidth="10%">EXAM TIMING </td><td><input type="text" name="t6"><br></td> </tr>
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
                
                String cid = request.getParameter("t2");
                String tit = request.getParameter("t3");
                String dat = request.getParameter("t4");
                String ses = request.getParameter("t5");
                String tim = request.getParameter("t6");
                String dept = request.getParameter("t7");
                
                
                if (request.getParameter("s1") != null) {
                    newSessionBean.addTime(dept, cid, tit,dat,ses,tim);
                    out.println("\n");
                    out.println("Time table added successfully");

                }
            %>


        </form>
            </b>
    </center>
    </body>
</html>
