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
          <div class="row bar">
            <!-- LEFT COLUMN _________________________________________________________-->
            <div id="blog-post" class="col-md-9">
              <p class="text-muted text-uppercase mb-small text-right text-sm">By <a href="#">John Slim</a> |  June 20, 2013</p>
              <p class="lead">This is the lead paragraph of the article. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p>
              <div id="post-content">
                <p class="text-sm"><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>
                <p><img src="<c:url value="/resources/img/blog2.jpg" />" alt="Example blog post alt" class="img-fluid"></p>
                <h2>${topic.subject}</h2>
                <blockquote class="blockquote">
                  <p class="text-sm">${topic.content}</p>
                </blockquote>
              </div>
			<c:if test="${showReply == true}">
              <div id="comment-form">
                <h4 class="text-uppercase">Leave a comment</h4>
                <form:form modelAttribute="replies" action='<%=request.getContextPath() + "/save/replies" %>' method="POST">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="name">Name <span class="required text-primary">*</span></label>
                        <input id="name" type="text" class="form-control" value="${user.username}" readonly disabled="true">
                        <form:hidden path="topicId" value="${topic.id}"></form:hidden>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label for="comment">Comment <span class="required text-primary">*</span></label>
                        <form:textarea path="comment" class="form-control"></form:textarea>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12 text-right">
                      <button class="btn btn-template-outlined"><i class="fa fa-comment-o"></i> Post comment</button>
                    </div>
                  </div>
                </form:form>
              </div>
			</c:if>
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