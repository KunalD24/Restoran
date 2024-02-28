<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="restron.conn.com.DBConnection"%>
<jsp:include page="include/sidebar.jsp" />  
<%--<jsp:include page="include/topbar.jsp" />--%>  
<!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Feedback</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Feedback</li>
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
                  <table class="table align-items-center table-flush" id="feedback">
                    <thead class="thead-light">
                      <tr>
                        <th>Sr No.</th>
                        <th>Name</th>
                        <th>Email</th>                        
                        <th>Subject</th>                        
                        <th>Feedback</th>                        
                        <th>Action</th>                        
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>Sr No.</th>
                        <th>Name</th>
                        <th>Email</th>                        
                        <th>Subject</th>                        
                        <th>Feedback</th>                        
                        <th>Action</th>                        
                      </tr>
                    </tfoot>
                    <tbody>
                        <%
               Connection conn = DBConnection.getConn();         
               String SQL = "Select contact.contact_id, contact.user_id, contact.subject, contact.message, registration.reg_id, registration.reg_fname, registration.reg_lname, registration.reg_email from contact LEFT JOIN registration ON contact.user_id = registration.reg_id";
               PreparedStatement ps = conn.prepareStatement(SQL);
               ResultSet rs = ps.executeQuery();
               int srNo = 1;              
               while(rs.next()){
               %>
                      <tr>
                        <td><%= srNo++ %></td>
                        <td><%= rs.getString("reg_fname") %></td>
                        <td><%= rs.getString("reg_email") %></td>
                        <td><%= rs.getString("subject") %></td>                        
                        <td><%= rs.getString("message") %></td>                                                
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