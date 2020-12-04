<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../layout/header.jsp" %> 
<body>
<div id="all">
	<%@ include file="../layout/topbar.jsp" %>
	<%@ include file="../layout/navbar.jsp" %>
	<!-- CONTENT-->
       <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <div class="box">
				 <c:if test="${not empty message}" >
					<div class="alert alert-${alert}" role="alert">
						${message}
					</div>
				 </c:if>
                <h2 class="text-uppercase">New account</h2>
                <p class="lead">Not our registered customer yet?</p>
                <p>With registration with us, new world of kakanin, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                <p class="text-muted">If you have any questions, please feel free to <a href="<%=request.getContextPath()%>/shop/review">contact us</a>, our customer service center is working for you 24/7.</p>
                <hr>
                <form:form modelAttribute="user" action='<%=request.getContextPath() + "/register/add" %>' method="POST">
                  <div class="form-group">
                    <label for="username">Username</label>
                    <form:input path="username" class="form-control" required="true"></form:input>
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                    <form:password path="password" class="form-control" required="true"></form:password>
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-template-outlined"><i class="fa fa-user-md"></i> Register</button>
                  </div>
                </form:form>
              </div>
            </div>
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../layout/footer.jsp" %> 
</div>
<%@ include file="../layout/jsfiles.jsp" %> 
</body>
</html>