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
            <!-- LEFT COLUMN -->
            <div class="col-lg-12">
              <p class="lead">BLACK KUTCHINTA is now in Cebu!
Be the first to have a bite of the unique, chewy all-black NO food coloring version of the traditional Pinoy kakanin, paired with a sweet Dulce de Leche dip and crispy Toasted Coconut sprinkles.
CURIOUS KA? TRY NA!</p>
              <p class="goToDescription"><a href="#details" class="scroll-to text-uppercase">Scroll to product details</a></p>
              <div id="productMain" class="row">
                <div class="col-sm-6">
                  <div data-slider-id="1" class="owl-carousel shop-detail-carousel">
                    <div> <img src="<c:url value="/resources/img/product/details/productBig${product.code}_1.png" />" alt="" class="img-fluid"></div>
                    <div> <img src="<c:url value="/resources/img/product/details/productBig${product.code}_2.png" />" alt="" class="img-fluid"></div>
                    <div> <img src="<c:url value="/resources/img/product/details/productBig${product.code}_3.png" />" alt="" class="img-fluid"></div>
                  </div>
                  
                </div>
                <div class="col-sm-6">
                  <div class="box">
				  	<form:form modelAttribute="product" action='<%=request.getContextPath() + "/shop/basket" %>' method="POST">
                      <h3 class="text-center h3">${product.name}</h3>
                      <p class="price">P${product.price}</p>
                      <p class="text-center">
                      	<form:hidden path="code"></form:hidden>
                      	<form:hidden path="price"></form:hidden>
                      	<form:hidden path="name"></form:hidden>
                        <button type="submit" class="btn btn-template-outlined"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                        <button type="submit" data-toggle="tooltip" data-placement="top" title="Add to wishlist" class="btn btn-default"><i class="fa fa-heart-o"></i></button>
                      </p>
                    </form:form>
                  </div>
                  <div data-slider-id="1" class="owl-thumbs">
                    <button class="owl-thumb-item"><img src="<c:url value="/resources/img/product/details/product${product.code}_1.png" />" alt="" class="img-fluid"></button>
                    <button class="owl-thumb-item"><img src="<c:url value="/resources/img/product/details/product${product.code}_2.png" />" alt="" class="img-fluid"></button>
                    <button class="owl-thumb-item"><img src="<c:url value="/resources/img/product/details/product${product.code}_3.png" />" alt="" class="img-fluid"></button>
                  </div>
                </div>
              </div>
              <div id="details" class="box mb-4 mt-4">
                <p></p>
                <h4>Product details</h4>
				<p>${product.description}</p>
                <blockquote class="blockquote">
                  <p class="mb-0"><em>Grab your BLACK KUTCHINTA with Dulce de Leche dip and crispy Toasted Coconut sprinkles - the perfect ending to any meal. Come on, give in. Order now!</em></p>
                </blockquote>
              </div>
              <div id="product-social" class="box social text-center mb-5 mt-5">
                <h4 class="heading-light">Show it to your friends</h4>
                <ul class="social list-inline">
                  <li class="list-inline-item"><a href="#" data-animate-hover="pulse" class="external facebook"><i class="fa fa-facebook mt-2"></i></a></li>
                  <li class="list-inline-item"><a href="#" data-animate-hover="pulse" class="external gplus"><i class="fa fa-google-plus mt-2"></i></a></li>
                  <li class="list-inline-item"><a href="#" data-animate-hover="pulse" class="external twitter"><i class="fa fa-twitter mt-2"></i></a></li>
                  <li class="list-inline-item"><a href="#" data-animate-hover="pulse" class="email"><i class="fa fa-envelope mt-2"></i></a></li>
                </ul>
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