<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	View All Person
	<c:if test="${not empty message}">
		<h2>${message}</h2>
	</c:if>
	<table border="1px solid black">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Address</td>
			<td>Action</td>
		</tr>
		<c:forEach items="${personList}" var="person">
			<tr>
				<td>${person.id}</td>
				<td>${person.name}</td>
				<td>${person.address}</td>
				<td>
					<a href="<%=request.getContextPath()%>/editPerson?id=${person.id}">Edit</a>
					<form action="<%=request.getContextPath()%>/deletePerson" id="deleteForm${person.id}">
						<input type="hidden" name="id" value="${person.id}">
						<a href="#" onclick="confirmDelete('${person.id}');">Delete</a>	
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	<script>
		function confirmDelete(formId) {
			if(confirm("Are you sure you want to delete this person?")) {
				document.getElementById("deleteForm" + formId).submit();
			}
		}
	</script>
</body>
</html>