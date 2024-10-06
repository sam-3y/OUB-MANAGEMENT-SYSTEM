

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
					class="nav-link">Grades</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${grade != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${grade == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${grade != null}">
            			Edit Grade
            		</c:if>
						<c:if test="${grade == null}">
            			Add New Grade
            		</c:if>
					</h2>
				</caption>

				<c:if test="${grade != null}">
					<input type="hidden" name="grade_id" value="<c:out value='${grade.grade_id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Student ID</label> <input type="text"
						value="<c:out value='${grade.stud_id}' />" class="form-control"
						name="stud_id" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Course ID</label> <input type="text"
						value="<c:out value='${grade.course_id}' />" class="form-control"
						name="course_id">
				</fieldset>

				<fieldset class="form-group">
					<label>Grade</label> <input type="text"
						value="<c:out value='${grade.grade}' />" class="form-control"
						name="grade">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>