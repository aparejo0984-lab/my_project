<div class="col-lg-3 mt-4 mt-lg-0">
   <!-- CUSTOMER MENU -->
   <div class="panel panel-default sidebar-menu">
      <div class="panel-heading">
         <h3 class="h4 panel-title">Customer section</h3>
      </div>
      <div class="panel-body">
         <ul class="nav nav-pills flex-column text-sm">
            <li class="nav-item"><a href="<%=request.getContextPath()%>/user/order/history" class="nav-link active"><i class="fa fa-list"></i> My orders</a></li>
            <li class="nav-item"><a href="<%=request.getContextPath() + "/user/account" %>" class="nav-link"><i class="fa fa-user"></i> My account</a></li>
            <li class="nav-item"><a href="<%=request.getContextPath()%>/user/j_spring_security_logout" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></li>
         </ul>
      </div>
   </div>
</div>