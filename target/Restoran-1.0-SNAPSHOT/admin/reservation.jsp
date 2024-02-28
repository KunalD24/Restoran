<jsp:include page="include/sidebar.jsp" />  
<%--<jsp:include page="include/topbar.jsp" />--%>  
<!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Reservation</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">List Of Reservationss</li>
            </ol>
          </div>
        </div>
        <!-- Row -->
        <div class="container-fluid" id="container-wrapper">
          <div class="row">
            <!-- Datatables -->
            <div class="col-lg-12">
              <div class="card mb-4">               
                <div class="table-responsive p-3">
                  <table class="table align-items-center table-flush" id="reservation">
                    <thead class="thead-light">
                      <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Booking Date</th>
                        <th>Booking Time</th>
                        <th>Number Of Hours</th>                        
                        <th>Number Of Tables</th>
                        <th>Total Price</th>
                        <th>Payment</th>
                        <th>Action</th>                        
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Booking Date</th>
                        <th>Booking Time</th>
                        <th>Number Of Hours</th>                        
                        <th>Number Of Tables</th>
                        <th>Total Price</th>
                        <th>Payment</th>
                        <th>Action</th>                        
                      </tr>
                    </tfoot>
                    <tbody>
                      <tr>
                          <td>1</td> 
                          <td>Tiger</td> 
                          <td>22/10/2023</td> 
                          <td>10:30 PM</td> 
                          <td>1 Hr</td> 
                          <td>1</td> 
                          <td>100</td> 
                          <td><span class="badge badge-success">Paid</span></td> 
                        <td>                            
                            <button type="button" class="btn btn-danger mb-1">Delete</button>
                        </td>                        
                      </tr>         
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- DataTable with Hover -->
          </div>
<jsp:include page="include/footer.jsp" /> 