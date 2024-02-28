<jsp:include page="include/sidebar.jsp" />  
<%--<jsp:include page="include/topbar.jsp" />--%>  
<!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">List Of Staff Members</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Staff Members</li>
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
                  <table class="table align-items-center table-flush" id="dataTable">
                    <thead class="thead-light">
                      <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Image</th>
                        <th>Phone</th>
                        <th>Action</th>                        
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Image</th>
                        <th>Phone</th>
                        <th>Action</th>                        
                      </tr>
                    </tfoot>
                    <tbody>
                      <tr>
                        <td>First Name</td>
                        <td>Last Name</td>
                        <td>Email</td>
                        <td>Image</td>
                        <td>Phone</td>
                        <td>
                            <button type="button" class="btn btn-primary mb-1">Edit</button>
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