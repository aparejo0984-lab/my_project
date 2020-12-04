<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../../layout/header.jsp" %> 
<body>
<div id="all">
	<%@ include file="../../layout/topbar.jsp" %>
	<%@ include file="../../layout/navbar.jsp" %>
	<!-- CONTENT-->
      <div id="content">
        <div class="container">
          <div class="row bar mb-0">
            <div id="customer-orders" class="col-md-9">
              <p class="text-muted lead">User List:</p>
              <div class="box mt-0 mb-lg-0">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Contact Number</th>
                      </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${userList}" var="user">
		                      <tr>
		                        <th>${user.id}</th>
		                        <td>${user.username}</td>
		                        <td>${user.name}</td>
		                        <td>${user.address}</td>
		                        <td>${user.contactNumber}</td>
		                      </tr>
	                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
			<%@ include file="../leftSidebar.jsp" %> 
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../../layout/footer.jsp" %> 
</div>
<%@ include file="../../layout/jsfiles.jsp" %> 
</body>
</html>