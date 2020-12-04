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
              <p class="text-muted lead">Review List:</p>
              <div class="box mt-0 mb-lg-0">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>USERID</th>
                        <th>Rating</th>
                        <th>Name</th>
                        <th>Comment</th>
                      </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${reviewList}" var="review">
		                      <tr>
		                        <th>${review.id}</th>
		                        <td>${review.userId}</td>
		                        <td>${review.rating}</td>
		                        <td>${review.name}</td>
		                        <td>${review.comment}</td>
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