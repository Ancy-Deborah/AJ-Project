<%-- 
    Document   : Fee
    Created on : Oct 6, 2019, 5:53:01 PM
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
         <jsp:include page="shome.jsp" />
         <center>
        <b>
                
            
        <form>
            <br><br><br>
            
    
            <table>
                
                <tr>
                    FEE PAYMENT
                </tr>
                
                <tr><td height="50" weidth="10%">PAYMENT OPTION </td><td><select name="t2" required>
                            <option value=""></option>
                            <option>CREDIT CARD</option>
                            <option>DEBIT CARD</option>
                             </select><br></td>
                  <tr><td height="50" weidth="10%">CARD HOLDER NAME</td><td><input type="text" name="t3" required><br></td> </tr>
                <tr><td height="50" weidth="10%">CARD NO</td><td><input type="text" name="t4" required><br></td> </tr>  
                 <tr><td height="50" weidth="10%">EXPIRY YEAR</td><td><input type="text" name="t5" required><br></td> </tr>
                <tr><td height="50" weidth="10%">CVV NO</td><td><input type="text" name="t6" required><br></td> </tr>
                <tr><td>Amount</td><td><label name="l1">35000</label>
                       
                </tr>
                
            </table>
            <input type="submit" name="s1" value="submit">
          
            <%
                NewSessionBeanLocal newSessionBean = null;
                Context c = new InitialContext();
                newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");
                
                String amt=request.getParameter("l1");
               
                String card = request.getParameter("t2");
                String name = request.getParameter("t3");
                String cno = request.getParameter("t4");
                String year = request.getParameter("t5");
                String cvv = request.getParameter("t6");
                
                if (request.getParameter("s1") != null) {
                    newSessionBean.FeePay(card, name,cno,year,cvv);
                    out.println("\n");
                    out.println("Paid Successfully");

                }
                
            %>
        </form>
        </b>
         </center>
    </body>
</html>
