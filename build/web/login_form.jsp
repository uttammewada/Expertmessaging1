<%-- 
    Document   : login_form
    Created on : 13 Apr, 2019, 9:46:56 AM
    Author     : ay131
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!-- AJAX code for forgot password of expert-->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'/>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        
<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

function myFunction1() {
  var x = document.getElementById("myInput1");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

function myFunction2() {
  var x = document.getElementById("myInput2");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

</script>

        
        <script type="text/javascript">
            var request;
            function forgotexpert()
            {
            var v=document.expertlogin.id.value;
            var url="ForgotExpert.jsp?expertid="+v;

            if(window.XMLHttpRequest){
            request=new XMLHttpRequest();
            }
            else if(window.ActiveXObject){
            request=new ActiveXObject("Microsoft.XMLHTTP");
            }

            try
            {
            request.onreadystatechange=getInfoExpert;
            request.open("GET",url,true);
            request.send();
            }
            catch(e)
            {
            alert("Unable to connect to server");
            }

            }

            function getInfoExpert(){
            if(request.readyState==4){
            var val=request.responseText;
                if(val.trim() == "success")
                {
                    swal ( 'Message From Server' ,  'New password has been sent on your email-id' ,'warning' );
                }
                else
                {
                    swal ( 'Message From Server' ,  'System Error Occurred' ,'warning' );
                }
            }
            }
            
            
            function forgotcustomer()
            {
            var v=document.customerlogin.id.value;
            var url="ForgotCustomer.jsp?custid="+v;

            if(window.XMLHttpRequest){
            request=new XMLHttpRequest();
            }
            else if(window.ActiveXObject){
            request=new ActiveXObject("Microsoft.XMLHTTP");
            }

            try
            {
            request.onreadystatechange=getInfoCustomer;
            request.open("GET",url,true);
            request.send();
            }
            catch(e)
            {
            alert("Unable to connect to server");
            }

            }

            function getInfoCustomer(){
            if(request.readyState==4){
            var val=request.responseText;
                if(val.trim() == "success")
                {
                    swal ( 'Message From Server' ,  'New password has been sent on your email-id' ,'warning' );
                }
                else
                {
                    swal ( 'Message From Server' ,  'System Error Occurred' ,'warning' );
                }
            }
            }
            
            function forgotadmin()
            {
            var v=document.adminlogin.id.value;
            var url="ForgotAdmin.jsp?adminid="+v;

            if(window.XMLHttpRequest){
            request=new XMLHttpRequest();
            }
            else if(window.ActiveXObject){
            request=new ActiveXObject("Microsoft.XMLHTTP");
            }

            try
            {
            request.onreadystatechange=getInfoAdmin;
            request.open("GET",url,true);
            request.send();
            }
            catch(e)
            {
            alert("Unable to connect to server");
            }

            }

            function getInfoAdmin(){
            if(request.readyState==4){
            var val=request.responseText;
                if(val.trim() == "success")
                {
                    swal ( 'Message From Server' ,  'New password has been sent on your email-id' ,'warning' );
                }
                else
                {
                    swal ( 'Message From Server' ,  'System Error Occurred' ,'warning' );
                }
            }
            }
</script>


        <!-- =-=-=-=-=-=-= Bootstrap CSS Style =-=-=-=-=-=-= -->
  <link rel="stylesheet" href="css/bootstrap.css">
  <!-- =-=-=-=-=-=-= Template CSS Style =-=-=-=-=-=-= -->
  <link rel="stylesheet" href="css/style.css">
  <!-- =-=-=-=-=-=-= Font Awesome =-=-=-=-=-=-= -->
  <link rel="stylesheet" href="css/font-awesome.css">
  <!-- =-=-=-=-=-=-= Et Line Fonts =-=-=-=-=-=-= -->
  <link rel="stylesheet" href="css/et-line-fonts.css">
  
       <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
    </head>
    <body>
        <div class="top-bar">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6 col-xs-4">
				<ul class="top-nav nav-left">
					<li><a href="index.jsp">Home</a>
					</li>
					<!--li class="hidden-xs"><a href="blog.jsp">Blog</a>
					</li//-->
					<!--li  class="hidden-xs"><a href="contact.jsp">Contact Us</a>
					</li-->
				</ul>
			</div>
			<div class="col-lg-8 col-md-8 col-sm-6 col-xs-8">
				<ul class="top-nav nav-right">
					<li><a href="register.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i>Signup</a>
					</li>
					<!--li class="dropdown"> 
						<a class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown" data-animations="fadeInUp">
							<img class="img-circle resize" alt="" src="images/authors/13.png">
							<span class="hidden-xs small-padding">
								<span>Abhishek Yadav</span>
							 <i class="fa fa-caret-down"></i>
							</span>
						</a>
						<ul class="dropdown-menu ">
							<!--li><a href="profile.jsp"><i class=" icon-bargraph"></i> Dashboard</a></li//-->
							<!--li><a href="profile-setting.jsp"><i class=" icon-gears"></i> Profile Setting</a></li>
							<li><a href="question-list.jsp"><i class="icon-heart"></i> Questions</a></li>
							<li><a href="#"><i class="icon-lock"></i> Logout</a></li>
						</ul>
					 </li-->
				</ul>
			</div>
		</div>
	</div>
</div>
        <!-- HEADER ENDS HERE -->
        
        <!-- =-=-=-=-=-=-= HEADER Navigation =-=-=-=-=-=-= -->
  <div class="navbar navbar-default">
    <div class="container">
      <!-- header -->
      <div class="navbar-header">
        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <!-- logo -->
        <a href="index.jsp" class="navbar-brand"><img class="img-responsive" alt="" src="images/logo.png">
        </a>
        <!-- header end -->
      </div>
    </div>
  </div>
        <!-- HEADER navigation ends here -->
        
        <div id="tabs">
            <ul>
    <li><a href="#tabs-1">Admin Login</a></li>
    <li><a href="#tabs-2">Customer Login</a></li>
    <li><a href="#tabs-3">Expert Login</a></li>
  </ul>
  <div id="tabs-1">
    <section class="section-padding-80 white" id="login">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">

            <div class="box-panel">

                <div class="form-group">
                    <form action="loginadmin_db.jsp" method="get" name="adminlogin">
                    
                  <label>Email</label>
                  <input type="text" placeholder="Enter your email" name="id" class="form-control" required>
                  
                </div>
                <div class="form-group">
                  <label>Password</label>
                  <input type="password" placeholder="Enter your password" name="password" class="form-control" required id="myInput"><br>
                  <input type="checkbox" onclick="myFunction()"> Show Password
                </div>
                 <div>
                     <button class="btn btn-primary btn-lg btn-block">Log In</button>
                  </div>
           
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <div class="checkbox flat-checkbox">
                        <!--label>
                          <input type="checkbox">
                          <span class="fa fa-check"></span> Remember me?
                        </label-->
                      </div>
                    </div>
                    <div class="col-xs-6 text-right">
                        <!--p class="help-block"><button class="btn btn-link" data-toggle="modal" onclick="forgotadmin()" id="foradmin">Forgot password?</button>
                      </p--->
                      <p class="help-block"><a data-toggle="modal" onclick="forgotadmin()" id="foradmin">Forgot password?</a>
                      </p>
                    </div>
                  </div>
                </div>
              </form>
                    
            </div>
          </div>
            

          <div class="clearfix"></div>
        </div>
      </div>
      <!-- end container -->
   </section>
  </div>
  <div id="tabs-2">
   <section class="section-padding-80 white" id="login">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">

            <div class="box-panel">

                <div class="form-group">
                    <form action="logincustomer_db.jsp" method="get" name="customerlogin">
                    
                  <label>Email</label>
                  <input type="text" placeholder="Enter your email" name="id" class="form-control" required="">
                  
                </div>
                <div class="form-group">
                  <label>Password</label>
                  <input type="password" placeholder="Enter your password" name="password" class="form-control" required="" id="myInput1"><br>
                  <input type="checkbox" onclick="myFunction1()"> Show Password
                </div>
                 <div>
                     <button class="btn btn-primary btn-lg btn-block">Log In</button>
                  </div>
           
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <div class="checkbox flat-checkbox">
                        <!--label>
                          <input type="checkbox">
                          <span class="fa fa-check"></span> Remember me?
                        </label-->
                      </div>
                    </div>
                    <div class="col-xs-6 text-right">
                        <!--p class="help-block"><button class="btn btn-link" data-toggle="modal" id="forcust" onclick="forgotcustomer()">Forgot password?</button>
                      </p-->
                      <p class="help-block"><a data-toggle="modal" href="#myModal" id="forcust" onclick="forgotcustomer()">Forgot password?</a>
                      </p>

                    </div>
                  </div>
                </div>
              </form>
                    
            </div>
          </div>

          <div class="clearfix"></div>
        </div>
      </div>
      <!-- end container -->
   </section>
  </div>
  <div id="tabs-3">
   <section class="section-padding-80 white" id="loginexpert">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">

            <div class="box-panel">

                <div class="form-group">
                    <form action="loginexpert_db.jsp" method="get" name="expertlogin">
                    
                  <label>Email</label>
                  <input type="text" placeholder="Enter your email" name="id" class="form-control" required="">
                  
                </div>
                <div class="form-group">
                  <label>Password</label>
                  <input type="password" placeholder="Enter your password" name="password" class="form-control" required="" id="myInput2"><br>
                  <input type="checkbox" onclick="myFunction2()"> Show Password
                </div>
                 <div>
                     <button class="btn btn-primary btn-lg btn-block">Log In</button>
                  </div>
           
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <div class="checkbox flat-checkbox">
                        <label>
                          <!--input type="checkbox">
                          <span class="fa fa-check"></span> Remember me?
                        </label-->
                      </div>
                    </div>
                    <div class="col-xs-6 text-right text-danger">
                        <!--p class="help-block  "><button class="btn btn-link" data-toggle="modal" id="forexpert" onclick="forgotexpert()">Forgot password?</button>
                      </p-->
                      <p class="help-block"><a data-toggle="modal" href="#myModal" id="forexpert" onclick="forgotexpert()">Forgot password?</a>
                      </p>
                    </div>
                  </div>
                </div>
              </form>
                    
            </div>
          </div>

          <div class="clearfix"></div>
        </div>
      </div>
      <!-- end container -->
   </section>
  </div>
</div>
        
    </body>
</html>
