<%-- 
    Document   : register_db
    Created on : 8 Apr, 2019, 7:03:43 PM
    Author     : ay131
--%>



<%@page import="dao.CustomerDAO"%>
<jsp:useBean id="u"  class="dto.Customer" scope="request"></jsp:useBean>
<jsp:setProperty name="u" property="*"></jsp:setProperty>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%       String custid=request.getParameter("custid");
         CustomerDAO obj=new CustomerDAO();
            boolean i=obj.verifyCustomer(custid);
            
            if(i)
            {
        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Verification Message' ,  'You have been successfully verified with ExpertMessaging' ,"
                + "  'warning' );");
        out.println("});");
        out.println("</script>");

            }
            else
            {
                        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Verification Message' ,  'Verification failed !!!' ,  'warning' );");
        out.println("});");
        out.println("</script>");

            }
        
        
        %>
        <jsp:include page="login_form.jsp"/>
    </body>
</html>
