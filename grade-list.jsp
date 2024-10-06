
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
  
<head>
<title>OUB Student Management System</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> 
   <link rel="stylesheet" href="css/style.css">
</head>
<body> 

   <!-- comment -->
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: darkblue">
                    <div> 
<body> <center>
    	</div>	<a href="https://www.oliviauniversity.edu.bi/" class="navbar-brand">
                                    OUB Student Management System
					 </a>
		</nav>
	</header>
	<br>
       
	<div class="row">
            
           		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of all OUB Grade Students</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new"  class="btn btn-success">
                                    Add New Grade</a>
			</div>
			<br>
			<table class="table table-bordered" >
				<thead>
					<tr>
						<th>Grade ID</th>
						<th>Student ID</th>
						<th>Course ID</th>
						<th>Grade</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="grade" items="${listgrade}">

						<tr>
							<td><c:out value="${grade.grade_id}" /></td>
							<td><c:out value="${grade.stud_id}" /></td>
							<td><c:out value="${grade.course_id}" /></td>
							<td><c:out value="${grade.grade}" /></td>
							<td><a href="edit?grade_id=<c:out value='${grade.grade_id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?grade_id=<c:out value='${grade.grade_id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
                                  
	</div>
</body>

</html>