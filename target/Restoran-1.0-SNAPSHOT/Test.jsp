booking.jsp
<jsp:include page="include/header.jsp" /> 
<div class="container-xxl position-relative p-0">
            <jsp:include page="include/nav.jsp" />  
            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-5 pb-4">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Booking</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Booking</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Reservation Start -->
        <div class="container-xxl py-5 px-0 wow fadeInUp" data-wow-delay="0.1s">
            <div class="row g-0">
                <div class="col-md-6">
                    <div class="video">
                        <button type="button" class="btn-play" data-bs-toggle="modal" data-src="https://www.youtube.com/embed/DWRcNpR6Kdc" data-bs-target="#videoModal">
                            <span></span>
                        </button>
                    </div>
                </div>
                <div class="col-md-6 bg-dark d-flex align-items-center">
                    <div class="p-5 wow fadeInUp" data-wow-delay="0.2s">
                        <h5 class="section-title ff-secondary text-start text-primary fw-normal">Reservation</h5>
                        <h1 class="text-white mb-4">Book A Table Online</h1>
                        <label for="exampleInputEmail1" style="color:white">1 hr = 200/- Rs</label><br>
                        <label for="exampleInputEmail1" style="color:white">4 Place Table = 100/- Rs</label><br>
                        <label for="exampleInputEmail1" style="color:white">6 Place Table = 150/- Rs</label><br>
                        <label for="exampleInputEmail1" style="color:white">8 Place Table = 200/- Rs</label><br><br>
                        <form id="paymentForm" action="CreateBooking" method="get">
                            <!-- Add this hidden input field in your form -->
                            <!--<input type="hidden" id="orderId" name="orderId" value="1">-->
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label for="exampleInputEmail1" style="color:white">Your Name</label>
                                    <div class="form-floating">
                                        <input type="text" name="name" class="form-control" id="name">                                        
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
                                    <label for="exampleInputEmail1" style="color:white">Your Email</label>
                                    <div class="form-floating">
                                        <input type="email" class="form-control" name="email" id="email">                                        
                                    </div>
                                </div>
                                <!--class = datetimepicker-input data-target="#date3" data-toggle="datetimepicker"-->
                                <div class="col-md-12">
                                    <label for="exampleInputEmail1" style="color:white">Booking Date</label>
                                    <div class="form-floating date" id="date3" data-target-input="nearest">
                                        <input type="date" name="booking_date" class="form-control" id="date"/>                                        
                                    </div>
                                </div>                                
                                <div class="col-md-12">                
                                    <label for="exampleInputEmail1" style="color:white">Select Time Slot</label>
                                    <div class="form-floating select2">                                        
                                        <select class="form-select" id="select0" class="slot-select" name="time_slot" multiple="true">                                                                                      
                                          <option value="10:00 AM - 10:30 AM">10:00 AM - 10:30 AM</option>
                                          <option value="10:30 AM - 11:00 AM">10:30 AM - 11:00 AM</option>
                                          <option value="11:00 AM - 11:30 AM">11:00 AM - 11:30 AM</option>
                                          <option value="11:30 AM - 12:00 PM">11:30 AM - 12:00 PM</option>
                                          <option value="12:00 PM - 12:30 PM">12:00 PM - 12:30 PM</option>
                                          <option value="12:30 PM - 01:00 PM">12:30 PM - 01:00 PM</option>
                                          <option value="01:00 PM - 01:30 PM">01:00 PM - 01:30 PM</option>
                                          <option value="01:30 PM - 02:00 PM">01:30 PM - 02:00 PM</option>
                                          <option value="02:00 PM - 02:30 PM">02:00 PM - 02:30 PM</option>
                                          <option value="02:30 PM - 03:00 PM">02:30 PM - 03:00 PM</option>
                                          <option value="03:00 PM - 03:30 PM">03:00 PM - 03:30 PM</option>
                                          <option value="03:30 PM - 04:00 PM">03:30 PM - 04:00 PM</option>
                                          <option value="04:00 PM - 04:30 PM">04:00 PM - 04:30 PM</option>
                                          <option value="04:30 PM - 05:00 PM">04:30 PM - 05:00 PM</option>
                                          <option value="05:00 PM - 05:30 PM">05:00 PM - 05:30 PM</option>
                                          <option value="05:30 PM - 06:30 PM">05:30 PM - 06:30 PM</option>
                                          <option value="06:00 PM - 06:00 PM">06:00 PM - 06:00 PM</option>                                          
                                          <option value="06:30 PM - 07:00 PM">06:30 PM - 07:00 PM</option>
                                          <option value="07:00 PM - 07:30 PM">07:00 PM - 07:30 PM</option>                                          
                                          <option value="07:30 PM - 08:00 PM">07:30 PM - 08:00 PM</option>
                                          <option value="08:00 PM - 08:30 PM">08:00 PM - 08:30 PM</option>
                                          <option value="08:30 PM - 09:00 PM">08:30 PM - 09:00 PM</option>                                          
                                          <option value="09:00 PM - 09:30 PM">09:00 PM - 09:30 PM</option>
                                          <option value="09:30 PM - 10:00 PM">09:30 PM - 10:00 PM</option>
                                          <option value="10:00 PM - 10:30 PM">10:00 PM - 10:30 PM</option>
                                          <option value="10:30 PM - 11:00 PM">10:30 PM - 11:00 PM</option>
                                          <option value="11:00 PM - 11:30 PM">11:00 PM - 11:30 PM</option>                                        -->
                                        </select>                                        
                                      </div>    
                                </div>                                
                                    <div class="col-md-12">
                                    <label for="exampleInputEmail1" style="color:white">Book Table</label>
                                    <div class="form-floating">
                                        <select class="form-select" id="select1" name="booking_table" multiple="true">                                            
                                          <option value="Table No.1 : 4 Place">Table No.1 : 4 Place</option>
                                          <option value="Table No.2 : 4 Place">Table No.2 : 4 Place</option>
                                          <option value="Table No.3 : 4 Place">Table No.3 : 4 Place</option>
                                          <option value="Table No.4 : 4 Place">Table No.4 : 4 Place</option>
                                          <option value="Table No.5 : 4 Place">Table No.5 : 4 Place</option>
                                          <option value="Table No.6 : 4 Place">Table No.6 : 4 Place</option>
                                          <option value="Table No.7 : 6 Place">Table No.7 : 6 Place</option>
                                          <option value="Table No.8 : 6 Place">Table No.8 : 6 Place</option>
                                          <option value="Table No.9 : 6 Place">Table No.9 : 6 Place</option>
                                          <option value="Table No.10 : 6 Place">Table No.10 : 6 Place</option>
                                          <option value="Table No.11 : 6 Place">Table No.11 : 6 Place</option>
                                          <option value="Table No.12 : 8 Place">Table No.12 : 8 Place</option>
                                          <option value="Table No.13 : 8 Place">Table No.13 : 8 Place</option>
                                          <option value="Table No.14 : 8 Place">Table No.14 : 8 Place</option>
                                          <option value="Table No.15 : 8 Place">Table No.15 : 8 Place</option>
                                        </select>                                        
                                    </div>
                                </div> 
                                <div class="col-md-12">
                                    <label for="exampleInputEmail1" style="color:white">Total Price</label>
                                    <div class="form-floating">
                                        <input type="text" class="form-control" name="price" id="total" readonly>                                        
                                    </div>
                                </div>
                                <div class="col-12">
                                    <input id="payButton" onclick="openRazorpay()" class="btn btn-primary w-100 py-3" type="submit" value="Book Now">
                                    <input type="submit" id="rzp-button1" onclick="openRazorpay()" value="Pay with Razorpay">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content rounded-0">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Youtube Video</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- 16:9 aspect ratio -->
                        <div class="ratio ratio-16x9">
                            <iframe class="embed-responsive-item" src="" id="video" allowfullscreen allowscriptaccess="always"
                                allow="autoplay"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>     
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/bootstrap-select.min.js"></script>
        <script src="js/script.js"></script><script>
        $(document).ready(function(){
        $('.multi_select').selectpicker();
        })
     </script>
        <script src="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag@2.0.1/dist/js/multi-select-tag.js"></script>  
        <script>            
        document.getElementById('select0').value = '';                           
        document.getElementById('select1').value = '';
     </script>
        <script>
//            new MultiSelectTag('select0')     
     </script>
        <script>
//            new MultiSelectTag('select1')  
     </script>
        <script>
        function updateTotal() {            
            var selectElement = document.getElementById("select0");
            var selectElement1 = document.getElementById("select1");
            var totalInput = document.getElementById("total");
            var total = 0;
            var total1 = 0;
            for (var i = 0; i < selectElement.options.length; i++) {
                if (selectElement.options[i].selected) {                
                    total += 100;
                }
            }
            for (var j = 0; j < selectElement1.options.length; j++) {
                if (selectElement1.options[j].selected) {                
                    total1 += 200;
                }
            }
            var final = total+total1;
            totalInput.value = final;
        }
        document.getElementById("select0").addEventListener("change", updateTotal);
        document.getElementById("select1").addEventListener("change", updateTotal);
     </script>
         
<jsp:include page="include/footer.jsp" />  

CreateBooking.java
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package restron.controller.com;

import com.razorpay.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import com.razorpay.*;
 
@WebServlet(name = "CreateBooking", urlPatterns = {"/CreateBooking"})
public class CreateBooking extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {            
            RazorpayClient razorpay = new RazorpayClient("rzp_test_GYgewAqcPfPVd5","69aNBOUn3YaI7tIDrYof2N19");
            
            JSONObject orderRequest = new JSONObject();
            orderRequest.put("amount", 500);
            orderRequest.put("currency", "INR");
            orderRequest.put("receipt", "receipt#1");
            
            JSONObject notes = new JSONObject();
            notes.put("notes_key_1", "Tea, Earl Grey, Hot");
            orderRequest.put("notes", notes);            
            
            Order order = razorpay.orders.create(orderRequest);                    
            String orderId = order.get("id");
            orderRequest.put("order_id", orderId);            
            
        } catch (RazorpayException ex) {
            Logger.getLogger(CreateBooking.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
}

header.jsp
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Restoran - Bootstrap Restaurant Template</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
    <!-- Include jQuery (if not already included) -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/habibmhamadi/multi-select-tag@2.0.1/dist/css/multi-select-tag.css">-->
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        function openRazorpay() {
            var options = {
                key: 'rzp_test_GYgewAqcPfPVd5', // Replace with your Razorpay API key
                amount: 10000, // Amount in paise (10000 paise = ₹100)
                currency: 'INR',
                name: 'Restoran',
                description: 'Booking Table',
                handler: function (response) {

                    alert('Payment successful. Transaction ID: ' + response.razorpay_payment_id);
                    window.location.href = "razorpay_payment.jsp";


                }                
            };
            var rzp = new Razorpay(options);
            rzp.open();
        }
    </script>

</head>
<body>
    <%--<%= //request.getContextPath()%>--%>
    <%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
    if(session.getAttribute("useremail")!=null)
    response.sendRedirect("index.jsp");
  %>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->