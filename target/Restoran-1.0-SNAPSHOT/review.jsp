<jsp:include page="include/header.jsp" /> 
<div class="container-xxl position-relative p-0">
            <jsp:include page="include/nav.jsp" />  
            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-5 pb-4">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Review Payment</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Review Payment</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->

        <!-- Reservation Start -->
        <div class="container-xxl py-5 px-0 wow fadeInUp" data-wow-delay="0.1s">
            <div class="row g-0">                
                <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="section-title ff-secondary text-center text-primary fw-normal">Review Payment</h5>
                    <h1 class="mb-5">Review</h1>
                </div>
                <div class="row justify-content-center">                    
                    <div class="col-md-6">                        
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form action="" method="get" autocomplete="off">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="orderid" id="orderid" readonly="true" value="<%= request.getAttribute("NewOrderId") %>" hidden>
                                        <div class="form-floating">                                            
                                            <input type="text" class="form-control" name="name" id="name" placeholder="Your Name" readonly="true" value="<%= request.getAttribute("NewName") %>">
                                            <label for="name">Your Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">                                            
                                            <input type="text" class="form-control" name="email" id="email" placeholder="Your Email" readonly="true" value="<%= request.getAttribute("NewEmail") %>">
                                            <label for="name">Your Email</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">                                       
                                        <div class="form-floating">                                            
                                            <input type="text" class="form-control" name="bookingdate" id="bookingdate" placeholder="Booking Date" readonly="true" value="<%= request.getAttribute("NewBooking_Date") %>">
                                            <label for="name">Your Booking Slot</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">                                            
                                            <input type="text" class="form-control" name="timeslot" id="timeslot" placeholder="Your Time Slot" readonly="true" value="<%= request.getAttribute("NewTime_Slot") %>">
                                            <label for="name">Your Time Slot</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">                                        
                                        <div class="form-floating">                                            
                                            <input type="text" class="form-control" name="bookingtable" id="bookingtable" placeholder="Your Table" readonly="true" value="<%= request.getAttribute("NewBooking_Table") %>">
                                            <label for="name">Your Table</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">                                            
                                            <input type="text" class="form-control" name="price" id="price" placeholder="Price" readonly="true" value="<%= request.getAttribute("NewPrice") %>">
                                            <label for="name">Your Price</label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <input value="Pay" onclick="openRazorpay()" class="btn btn-primary w-100 py-3" type="button">
                                    </div>
                                </div>
                            </form>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>     
         
<jsp:include page="include/footer.jsp" />  