<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
          <div class="row bar">
            <div id="customer-order" class="col-lg-9">
              <p class="lead">Order #1735 was placed on <strong>22/06/2013</strong> and is currently <strong>Being prepared</strong>.</p>
              <p class="lead text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>
              <div class="box">
                <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th colspan="2" class="border-top-0">Product</th>
                        <th class="border-top-0">Quantity</th>
                        <th class="border-top-0">Unit price</th>
                        <th class="border-top-0">Discount</th>
                        <th class="border-top-0">Total</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a href="#"><img src="<c:url value="/resources/img/detailsquare.jpg" />" alt="White Blouse Armani" class="img-fluid"></a></td>
                        <td><a href="#">White Blouse Armani</a></td>
                        <td>2</td>
                        <td>$123.00</td>
                        <td>$0.00</td>
                        <td>$246.00</td>
                      </tr>
                      <tr>
                        <td><a href="#"><img src="<c:url value="/resources/img/detailsquare.jpg" />" alt="Black Blouse Armani" class="img-fluid"></a></td>
                        <td><a href="#">Black Blouse Armani</a></td>
                        <td>1</td>
                        <td>$200.00</td>
                        <td>$0.00</td>
                        <td>$200.00</td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th colspan="5" class="text-right">Order subtotal</th>
                        <th>$446.00</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Shipping and handling</th>
                        <th>$10.00</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Tax</th>
                        <th>$0.00</th>
                      </tr>
                      <tr>
                        <th colspan="5" class="text-right">Total</th>
                        <th>$456.00</th>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <div class="row addresses">
                  <div class="col-md-6 text-right">
                    <h3 class="text-uppercase">Invoice address</h3>
                    <p>John Brown<br>					    13/25 New Avenue<br>					    New Heaven<br>					    45Y 73J<br>					    England<br>					    Great Britain</p>
                  </div>
                  <div class="col-md-6 text-right">
                    <h3 class="text-uppercase">Shipping address</h3>
                    <p>John Brown<br>					    13/25 New Avenue<br>					    New Heaven<br>					    45Y 73J<br>					    England<br>					    Great Britain</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
	<!-- CONTENT-->    
	<%@ include file="../../layout/footer.jsp" %> 
</div>
<%@ include file="../../layout/jsfiles.jsp" %> 
</body>
</html>