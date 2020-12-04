<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<%@ include file="../layout/header.jsp" %> 
<body>
<div id="all">
	<%@ include file="../layout/topbar.jsp" %>
	<%@ include file="../layout/navbar.jsp" %>
	<!-- CONTENT-->
       <div id="content">
        <div id="contact" class="container">
          <section class="bar">
            <div class="row">
              <div class="col-md-12">
                <div class="heading">
                  <h2>We are here to help you</h2>
                </div>
                <p class="lead">Are you curious about something? Do you have some kind of problem with our products? As am hastily invited settled at limited civilly fortune me. Really spring in extent an by. Judge but built gay party world. Of so am he remember although required. Bachelor unpacked be advanced at. Confined in declared marianne is vicinity.</p>
                <p class="text-sm">Please feel free to contact us, our customer service center is working for you 24/7.</p>
              </div>
            </div>
          </section>
		  <c:if test="${not empty message}" >
			<div class="alert alert-${alert}" role="alert">
				${message}
			</div>
		  </c:if>
          <section class="bar pt-0">
            <div class="row">
              <div class="col-md-12">
                <div class="heading text-center">
                  <h2>Contact form</h2>
                </div>
              </div>
              <div class="col-md-8 mx-auto">
                <form:form modelAttribute="reviews" action='<%=request.getContextPath() + "/shop/review/add" %>' method="POST">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="name">Name</label>
                        <form:input path="name" class="form-control"></form:input>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="message">Rating</label>
                        <form:select path="rating" class="form-control">
					      <option value="5">Excellent</option>
					      <option value="4">Good</option>
					      <option value="3">Fair</option>
					      <option value="2">Poor</option>
					      <option value="1">Very Poor</option>
					      <option value="0">No rating</option>
                        </form:select>
                      </div>
                    </div>
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label for="message">Comments / Suggestion:</label>
                        <form:textarea path="comment" class="form-control"></form:textarea>
                      </div>
                    </div>
                    <div class="col-sm-12 text-center">
                      <button type="submit" class="btn btn-template-outlined"><i class="fa fa-envelope-o"></i> Send</button>
                    </div>
                  </div>
                </form:form>
              </div>
            </div>
          </section>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../layout/footer.jsp" %> 
</div>
<%@ include file="../layout/jsfiles.jsp" %> 
</body>
</html>