<%-- 
    Document   : CourseReg
    Created on : Oct 5, 2019, 2:15:26 PM
    Author     : Admin
--%>

<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.NewSessionBeanLocal"%>
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
                    COURSE REGISTRATION
                </tr>
                <tr><td height="50" weidth="10%">COURSE NAME</td><td><input type="text" name="t1" required><br></td> </tr>
                <tr><td height="50" weidth="10%">COURSE ID</td><td><input type="text" name="t2" required><br></td></tr>
                <tr><td height="50" weidth="10%">DEPARTMENT OFFERING</td><td><select name="t3" required>
                            <option>Please Select</option>
                            <option>BCA</option>
                            <option>BBA</option>
                            <option>Bcom</option>
                            <option>VisCom</option>
                            <option>MSc IT</option>
                        </select><br></td>
                </tr>
                <tr>
                    <td height="50" weidth="10%" >COURSE DURATION</td><td><input type="radio" name="t4" value="6 months">  6 month<br></td> 
                    <td><input type="radio" name="t4" value="1 year" >1 year</td>

                </tr>
            </table>
            <input type="submit" name="s1" value="submit">
          
            <%
                NewSessionBeanLocal newSessionBean = null;
                Context c = new InitialContext();
                newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");

                String cname = request.getParameter("t1");
                String cid = request.getParameter("t2");
                String dept = request.getParameter("t3");
                String dur = request.getParameter("t4");

                if (request.getParameter("s1") != null) {
                    newSessionBean.courseAdd(cname, cid, dept, dur);
                    out.println("\n");
                    out.println("\nInserted successfully");

                }
            %>


        </form>
            </b>
    </center>
</body>
</html>
