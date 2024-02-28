<jsp:include page="include/header.jsp" />  
<% if (request.getAttribute("ContactSuccess") != null) { %>
        <script>Swal.fire({title: "Done",text: "Message send Successfull!",icon: "success"});</script>
        <% } %>
<!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0">
            <jsp:include page="include/nav.jsp" />  

            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-5 pb-4">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Contact Us</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="section-title ff-secondary text-center text-primary fw-normal">Contact Us</h5>
                    <h1 class="mb-5">Contact For Any Query</h1>
                </div>
                
                <div class="row justify-content-center">       
                    <div class="col-md-6">                          
                        <div class="wow fadeInUp" data-wow-delay="0.2s">                            
                            <form action="ContactController" method="post" autocomplete="off" name="contact" onsubmit="return ValidateContactForm()">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="contact_id" id="customer_id" readonly="true" value="<%= session.getAttribute("userid") %>" hidden="true">
                                        <div class="form-floating">                                            
                                            <input type="text" class="form-control" name="contact_fname" id="fname" placeholder="Your Fist Name" readonly="true" value="<%= session.getAttribute("userfname") %>">
                                            <label for="name">Your First Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="contact_lname" id="lname" placeholder="Your Last Name" readonly="true" value="<%= session.getAttribute("userlname")%>">
                                            <label for="lname">Your Last Name</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="email" class="form-control" name="contact_email" id="email" placeholder="Your Email" readonly="true" value="<%= session.getAttribute("useremail")%>">
                                            <label for="email">Email</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="contact_subject" id="subject" placeholder="Subject">
                                            <label for="subject">Subject</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a message here" name="contact_message" id="message" style="height: 150px"></textarea>
                                            <label for="message">Message</label>
                                        </div>
                                    </div>               
                                     <%  
                       if (session.getAttribute("userfname") == null) {  
                        %>
                                    <div class="col-12">                                        
                                        <input value="Send Message" class="btn btn-primary w-100 py-3" type="submit">
                                    </div>
                                    <script>Swal.fire({title: "Error",text: "You dont have account",icon: "error"});</script>
                                    <%   }
                      %>
                                    <%  
                       if (session.getAttribute("userfname") != null) {  
                        %>
                                    <div class="col-12">                                        
                                        <input value="Send Message" class="btn btn-primary w-100 py-3" type="submit">                                        
                                    </div>
                                    <% } %>
                                </div>
                            </form>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->       
<jsp:include page="include/footer.jsp" />  