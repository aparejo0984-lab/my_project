<div class="col-lg-3 mt-4 mt-lg-0">
  <!-- ADMIN MENU -->
  <div class="panel panel-default sidebar-menu">
    <div class="panel-heading">
      <h3 class="h4 panel-title">Admin Section</h3>
    </div>
    <div class="panel-body">
      <ul class="nav nav-pills flex-column text-sm">
        <li class="nav-item"><a href="<%=request.getContextPath() + "/admin/product/list" %>" class="nav-link"><i class="fa fa-list"></i> Products</a></li>
        <li class="nav-item"><a href="<%=request.getContextPath() + "/admin/orders/list" %>" class="nav-link"><i class="fa fa-shopping-cart"></i> Orders</a></li>
        <li class="nav-item"><a href="<%=request.getContextPath() + "/admin/user/list" %>" class="nav-link"><i class="fa fa-users"></i> Users</a></li>
        <li class="nav-item"><a href="<%=request.getContextPath() + "/admin/reviews/list" %>" class="nav-link"><i class="fa fa-heart"></i> Reviews</a></li>
        <li class="nav-item"><a href="<%=request.getContextPath() + "/user/account" %>" class="nav-link"><i class="fa fa-user"></i> My account</a></li>
        <li class="nav-item"><a href="<%=request.getContextPath()%>/user/j_spring_security_logout" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></li>
      </ul>
    </div>
  </div>
</div>
