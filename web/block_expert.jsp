<%@page import="dao.ExpertDAO"%>
<%
  String expertid = request.getParameter("id");
  
  ExpertDAO cdo = new ExpertDAO();
  
  boolean b = cdo.blockExpert(expertid);

  if(b)
  {
        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Message From Server' ,  'You have succcessfully blocked the expert!!!' ,  'warning' );");
        out.println("});");
        out.println("</script>");
%>        
<jsp:include page="index_admin.jsp"/>
<%  }
else
  {
        out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
        out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
        out.println("<script>");
        out.println("$(document).ready(function(){");
        out.println("swal ( 'Message From Server' ,  'Some issue occurred!!!' ,  'warning' );");
        out.println("});");
        out.println("</script>");
%>
<jsp:include page="index_admin.jsp"/>
<%
  }  
%>