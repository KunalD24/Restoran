<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4 px-lg-5 py-3 py-lg-0">
                <a href="" class="navbar-brand p-0">
                    <h1 class="text-primary m-0"><i class="fa fa-utensils me-3"></i>Restoran</h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0 pe-4">
                        <a href="index.jsp" class="nav-item nav-link">Home</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <a href="service.jsp" class="nav-item nav-link">Service</a>
                        <a href="menu.jsp" class="nav-item nav-link">Menu</a>                    
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                        <div class="nav-item dropdown">
                            <% 
                    if ((session.getAttribute("useremail"))!=null) 
                    { 
                 %>
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Welcome <%= session.getAttribute("userfname") %> <%= session.getAttribute("userlname") %></a>
                            <div class="dropdown-menu m-0" data-bs-toggle="modal" data-bs-target="#logout">
                                    <a href="#" class="dropdown-item">Logout</a>                                
                            </div>  
                            <%
                    }else{     
                 %>
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Account</a>
                            <div class="dropdown-menu m-0" data-bs-toggle="modal" data-bs-target="#login">
                                <a href="login.jsp" class="dropdown-item">Login</a>                                
                            </div>
                            <%
                    }
                 %>                                                                                                                     
                        </div>
                    </div>
                    <a href="booking.jsp" class="btn btn-primary py-2 px-4">Book A Table</a>
                </div>
            </nav>
<%--<jsp:include page="../login.jsp" />--%>  
<jsp:include page="../logout.jsp" />  