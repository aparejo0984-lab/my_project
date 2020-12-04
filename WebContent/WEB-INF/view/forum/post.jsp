<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
          <div class="row bar">
            <!-- LEFT COLUMN _________________________________________________________-->
            <div id="blog-post" class="col-md-9">
              <p class="text-muted text-uppercase mb-small text-right text-sm">By <a href="#">John Slim</a> |  June 20, 2013</p>
              <p class="lead">This is the lead paragraph of the article. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p>
              <div id="comment-form">
                <h4 class="text-uppercase">Create a Topic</h4>
                <form:form modelAttribute="topics" action='<%=request.getContextPath() + "/user/savePost" %>' method="POST">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="name">Name <span class="required text-primary">*</span></label>
                        <input id="name" type="text" class="form-control" value="${user.username}" readonly disabled="true">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="name">Subject <span class="required text-primary">*</span></label>
                        <form:input path="subject" class="form-control"></form:input>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label for="comment">Content <span class="required text-primary">*</span></label>
                        <form:textarea path="content" class="form-control"></form:textarea>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12 text-right">
                      <button class="btn btn-template-outlined"><i class="fa fa-comment-o"></i> Post a topic</button>
                    </div>
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