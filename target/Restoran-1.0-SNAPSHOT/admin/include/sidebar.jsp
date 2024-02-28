<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="img/logo/logo.png" rel="icon">
  <title>RuangAdmin - Dashboard</title>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
  <link href="<%=request.getContextPath()%>/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="<%=request.getContextPath()%>/admin/css/ruang-admin.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body id="page-top">
    <%--<%=request.getContextPath()%>--%>
  <div id="wrapper">      
    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-text mx-3 h2">Restroan</div>
      </a>
      <hr class="sidebar-divider my-0">
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/admin/dashboard.jsp">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap"
          aria-expanded="true" aria-controls="collapseBootstrap">
          <i class="fas fa-hamburger"></i>
          <span>Food Items</span>
        </a>
        <div id="collapseBootstrap" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="<%=request.getContextPath()%>/admin/add-food-item.jsp">Add Food Items</a>
            <a class="collapse-item" href="<%=request.getContextPath()%>/admin/list-food-item.jsp">List Of Food Items</a>
          </div>
        </div>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/admin/reservation.jsp">
          <i class="fas fa-hotel"></i>
          <span>Reservation</span></a>
      </li>
<!--      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap1"
          aria-expanded="true" aria-controls="collapseBootstrap">
          <i class="fa fa-address-card" aria-hidden="true"></i>
          <span>Staff Members</span>
        </a>
        <div id="collapseBootstrap1" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="add-staff.jsp">Add Staff Members</a>
            <a class="collapse-item" href="staff.jsp">Staff Members</a>
          </div>
        </div>
      </li>-->
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/admin/transaction.jsp">
          <i class="fab fa-amazon-pay"></i>
          <span>Transactions</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/admin/user.jsp">
          <i class="fa fa-address-card" aria-hidden="true"></i>
          <span>Users/Customer</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="<%=request.getContextPath()%>/admin/feedback.jsp">
          <i class="fa fa-envelope" aria-hidden="true"></i>
          <span>Feedback</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap2"
          aria-expanded="true" aria-controls="collapseBootstrap">
          <i class="fa fa-cog" aria-hidden="true"></i>
          <span>Setting</span>
        </a>
        <div id="collapseBootstrap2" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="<%=request.getContextPath()%>/admin/about.jsp">About Info</a>
            <a class="collapse-item" href="<%=request.getContextPath()%>/admin/contact.jsp">Contact Info</a>
            <a class="collapse-item" href="<%=request.getContextPath()%>/admin/working-day.jsp">Working Days</a>
          </div>
        </div>
      </li>
      <hr class="sidebar-divider">
    </ul>
    <!-- Sidebar -->
    <jsp:include page="topbar.jsp" />   