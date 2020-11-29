<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
                <div class="heading">
                <h3>New Product</h3>
                </div>
                <form:form modelAttribute="product" action='<%=request.getContextPath() + "/admin/product/add" %>' method="POST">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="name">Code</label>
                        <form:input path="code" class="form-control"></form:input>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="name">Name</label>
                        <form:input path="name" class="form-control"></form:input>
                      </div>
                    </div>
                    
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="price">Price</label>
                        <form:input path="price" class="form-control"></form:input>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="message">Status</label>
                        <form:select path="status" class="form-control">
					      <option value="1">Available</option>
					      <option value="2">Out of Stock</option>
					      <option value="3">Coming soon</option>
                        </form:select>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="description">Description</label>
                        <form:textarea path="description" class="form-control"></form:textarea>
                      </div>
                    </div>
                    <div class="col-md-12 text-center">
                      <button type="submit" class="btn btn-template-outlined"><i class="fa fa-envelope-o"></i>Save Changes</button>
                    </div>
                  </div>
                </form:form>
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