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
	Registration
	<c:if test="${not empty message}">
		<h2>${message}</h2>
	</c:if>
	<form:form modelAttribute="person" action='<%=request.getContextPath() + "/savePerson" %>' method="POST">
		<table>
			<tr>
				<td>Name: </td>
				<td><form:input path="name"></form:input></td>
			</tr>
			<tr>
				<td>Address: </td>
				<td><form:input path="address"></form:input></td>
			</tr>
		</table>
		<input type="submit" value="Save">
	</form:form>
	<a href="<%=request.getContextPath()%>/viewAllPerson">View All</a>
</body>
</html>