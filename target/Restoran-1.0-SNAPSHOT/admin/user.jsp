<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="restron.conn.com.DBConnection"%>
<jsp:include page="include/sidebar.jsp" />  
<%--<jsp:include page="include/topbar.jsp" />--%>  
<!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">List Of User / Customer</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">User / Customer</li>
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
                  <table class="table align-items-center table-flush" id="user">
                    <thead class="thead-light">
                      <tr>
                        <th>Sr No.</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile Number</th>                        
                        <th>Action</th>                        
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>Sr No.</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile Number</th>                        
                        <th>Action</th>       
                      </tr>
                    </tfoot>
                    <tbody>                     
                        <%
               Connection conn = DBConnection.getConn();         
               String SQL = "Select * from registration where reg_role = 0";
               PreparedStatement ps = conn.prepareStatement(SQL);
               ResultSet rs = ps.executeQuery();
               int srNo = 1;
               while(rs.next()){
               %>
                      <tr>                          
                        <td><%= srNo++ %></td>
                        <td><%= rs.getString("reg_fname") + " " + rs.getString("reg_lname") %></td>
                        <td><%= rs.getString("reg_email") %></td>                        
                        <td><%= rs.getString("reg_mobile") %></td>                        
                        <td>                            
                            <button type="button" class="btn btn-danger mb-1">Delete</button>
                        </td>                        
                      </tr>  
                      <%
                }
                rs.close();
             %>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- DataTable with Hover -->
          </div>
<jsp:include page="include/footer.jsp" /> 