<%@page import="dao.CustomerDAO"%>
<%@page import="dto.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2> Registered <b>Customer List</b></h2>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>FirstName</th>
                        <th>LastName</th>
                        <th>MobileNo</th>
                       <th>Blocked </th>
                        

                    </tr>
                </thead>
                <tbody>
                    <% try {
                            CustomerDAO dao = new CustomerDAO();
                            ArrayList<Customer> lst = dao.getAllCustomers();

                            for (Customer s : lst) {

                    %>

                    <tr>

                        <td><%=s.getId()%></td>

                        <td><%=s.getFirstName()%></td>
                        <td><%=s.getLastName()%></td>
                        <td><%=s.getMobileNumber()%></td>
                        <td><%=s.isBlocked()%></td>
                        
                        <td><%  if (!s.isBlocked()){%>
                            <a href="block_customer.jsp?id=<%=s.getId()%>" class="delete"  data-toggle="modal"><img title="BLOCK" style="height: 30px; width: 30px;"  src="images/33.png"></a>
                        </td>
                        <%}%>
                    </tr>
<!--                <script>
                    function myclick()
                    {
                        swal({
                            title: "Are you sure?",
                            text: "Your will not be able to recover this imaginary file!",
                            type: "warning",
                            showCancelButton: true,
                            confirmButtonClass: "btn-danger",
                            confirmButtonText: "Yes, delete it!",
                            closeOnConfirm: false
                        },
                                function () {
                                    swal("Deleted!", "Your imaginary file has been deleted.", "success");
                                });

                    }
                </script>-->
                <%
                        }
                    } catch (Exception e) {

                    }
                %>




                </tbody>
            </table>
            <div class="clearfix">
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item "><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>
 
        
    </body>
</html>
