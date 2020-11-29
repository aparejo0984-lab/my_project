<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="../layout/header.jsp" %> 
<body>
<div id="all">
	<%@ include file="../layout/topbar.jsp" %>
	<%@ include file="../layout/navbar.jsp" %>
	<!-- CONTENT-->+
      <div id="content">
        <div class="container">
          <div id="error-page" class="col-md-8 mx-auto text-center">
            <div class="box">
              <p class="text-center"><a href="index.html"><img src="/resources/img/product/logo-company.png" alt="J&G Company"></a></p>
              <h3>We are sorry - you are not authorized to access this page</h3>
              <h4 class="text-muted">Error 504 - Access denied</h4>
              <p class="buttons"><a href="index.html" class="btn btn-template-outlined"><i class="fa fa-home"></i> Go to Homepage</a></p>
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