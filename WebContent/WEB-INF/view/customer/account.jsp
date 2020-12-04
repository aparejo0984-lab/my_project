<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Collection"%>
<%@ page import="org.springframework.security.core.GrantedAuthority"%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
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
          <div class="row bar">
            <div id="customer-account" class="col-lg-9 clearfix">
              <p class="lead">Change your personal details or your password here.</p>
              <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
			  <c:if test="${not empty passwordMsg}" >
				<div class="alert alert-${alert}" role="alert">
					${passwordMsg}
				</div>
			 </c:if>
              <div class="box mt-5">
                <div class="heading">
                  <h3 class="text-uppercase">Change password</h3>
                </div>
                <form:form modelAttribute="user" action='<%=request.getContextPath() + "/user/update/password" %>' method="POST">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_1">New password</label>
                        <form:input path="password" class="form-control" required="true"></form:input>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_2">Retype new password</label>
                        <input id="password_2" type="password" class="form-control" required="true">
                      </div>
                    </div>
                  </div>
                  <div class="registrationFormAlert" id="CheckPasswordMatch"></div>
                  <div class="text-center">
                    <button type="submit" id="password-btn" class="btn btn-template-outlined"><i class="fa fa-save"></i> Save new password</button>
                  </div>
                </form:form>
              </div>
              <div class="bo3 mt-5">
				  <c:if test="${not empty message}" >
					<div class="alert alert-${alert}" role="alert">
						${message}
					</div>
				  </c:if>
                <div class="heading">
                  <h3 class="text-uppercase">Personal details</h3>
                </div>
				<form:form modelAttribute="user" action='<%=request.getContextPath() + "/user/update" %>' method="POST">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="firstname">Username</label>
                        <input id="firstname" type="text" value="${user.username}" class="form-control" disabled readonly>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="name">Name</label>
                        <form:input path="name" class="form-control"></form:input>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="address">Address</label>
                        <form:input path="address" class="form-control"></form:input>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 col-lg-6">
                      <div class="form-group">
                        <label for="city">Contact Number</label>
                        <form:input path="contactNumber" class="form-control"></form:input>
                      </div>
                    </div>
                    <div class="col-md-12 text-center">
                      <button type="submit" class="btn btn-template-outlined"><i class="fa fa-save"></i> Save changes</button>
                    </div>
                  </div>
               </form:form>
              </div>
            </div>
 			<!-- CUSTOMER MENU --> 
			<c:choose>
				<c:when test = "${isAdmin}">
					<%@ include file="../admin/leftSidebar.jsp" %> 
				</c:when>		         
				<c:otherwise>
					<%@ include file="menu.jsp" %> 
				</c:otherwise>
			</c:choose>
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../layout/footer.jsp" %> 
</div>
<%@ include file="../layout/jsfiles.jsp" %> 
<script type="text/javascript">
$(document).ready(function () {
    $("#password_2").keyup(checkPasswordMatch);
 });
 
function checkPasswordMatch() {
	$( "#password-btn" ).prop( "disabled", false );
	
    var password = $("#password").val();
    var confirmPassword = $("#password_2").val();
    
    if (password != confirmPassword){
        $("#CheckPasswordMatch").html("Passwords does not match!").css("color", "red");
    	$( "#password-btn" ).prop( "disabled", true );
    }
    else{
        $("#CheckPasswordMatch").html("Passwords match.").css("color", "green");
        $( "#password-btn" ).prop( "disabled", false );
    }

}
</script>
</body>
</html>