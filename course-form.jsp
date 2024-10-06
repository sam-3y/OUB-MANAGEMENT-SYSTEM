

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>OUB Student Management System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> 
                                    OUB Student Management System </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Courses</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${course != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${course == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${course != null}">
            			Edit Course
            		</c:if>
						<c:if test="${student == null}">
            			Add New Course
            		</c:if>
					</h2>
				</caption>

				<c:if test="${course != null}">
					<input type="hidden" name="id" value="<c:out value='${course.course_id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Course Name</label> <input type="text"
						value="<c:out value='${course.course_name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>