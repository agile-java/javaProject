<html>
    <head>
        <title>Login System</title>
    </head>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <body>
   
           <%
        String userName=(String)session.getAttribute("userName");
        
        //redirect user to home page if already logged in
        if(userName!=null){
            response.sendRedirect("EmployeeController?action=LIST");
        }
 
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){
        		   out.print("Incorrect login details!");	           		
        	}
        	else{
        		out.print("Some error occurred!");
        	}
        }
        %>
    
        <div class="container col-md-6 ">
        	<form  action="loginprocess" method="post"> 
       		<div class="card ">
	        	<div class="card-header text-left font-weight-bold">
	        		Delete Customer
	        	</div>
	        	<div class="card-body">
	           		 
	             <form name="form" action="RegisterServlet.do" method="post" onsubmit="return validate()">
        <table align="center">
         <tr>
         <td>SSN ID</td>
         <td><input type="text" name="ssnId" /></td>
         </tr>
         <tr>
         <td>Customer Id</td>
         <td><input type="text" name="customerId" /></td>
         </tr>
         <tr>
         <td>Customer Name</td>
         <td><input type="text" name="customerName" /></td>
         </tr>
         <tr>
         <td>Age</td>
         <td><input type="text" name="age" /></td>
         </tr>
         <tr>
         <td>Address</td>
         <td><input type="text" name="address" /></td>
         </tr>
         <tr>
         <td><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></td>
         </tr>
         <tr>
         <td></td>
         <td><input type="submit" class="btn btn-secondary" value="delete"></input><input
         type="reset"  class="btn btn-outline-dark" value="Cancel"></input></td>
         </tr>
        </table>
    </form>
	        		
	        	</div>
	        	
       		</div>
        	</form>
        </div>
    </body>
</html>