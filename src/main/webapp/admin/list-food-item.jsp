<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="restron.conn.com.DBConnection"%>
<jsp:include page="include/sidebar.jsp" />  
<%    
    if(request.getAttribute("FoodItemDeleted")!=null)
    { 
%>
            <script>Swal.fire({title: "Done",text: "Food Item Deleted Successfull!",icon: "success"}).then(function() { window.location = "admin/list-food-item.jsp";});</script>
<%
    }
%>
<%--<jsp:include page="include/topbar.jsp" />--%>  
<!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">List Of Food Items</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">List Of Food Items</li>
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
                  <table class="table align-items-center table-flush" id="fooditem">
                    <thead class="thead-light">                        
                      <tr>
                        <th>Sr No.</th>
                        <th>Food Name</th>
                        <th>Food Description</th>
                        <th>Food Image</th>
                        <th>Food Category</th>                        
                        <th>Food Price</th>                        
                        <th>Action</th>                        
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>Sr No.</th>
                        <th>Food Name</th>
                        <th>Food Description</th>
                        <th>Food Image</th>
                        <th>Food Category</th>                        
                        <th>Food Price</th>                        
                        <th>Action</th>                        
                      </tr>
                    </tfoot>
                    <tbody>                     
                        <%
               Connection conn = DBConnection.getConn();         
               String SQL = "Select * from food_item";
               PreparedStatement ps = conn.prepareStatement(SQL);
               ResultSet rs = ps.executeQuery();
               int srNo = 1;
               while(rs.next()){
               %>
                      <tr>                          
                        <td><%= srNo++ %></td>
                        <td><%= rs.getString("food_name") %></td>
                        <td><%= rs.getString("food_description") %></td>
                        <td><img src="<%=request.getContextPath()%>/admin/FoodItemsImg/<%= rs.getString("food_image_name") %>" height="70" width="70"></td>
                        <td><%= rs.getString("food_category") %></td>
                        <td><%= rs.getString("food_price") %></td>
                        <td>                            
                            <a href="<%=request.getContextPath()%>/admin/UpdateFood.jsp?foodid=<%=rs.getString("food_id")%>"><button type="button" class="btn btn-primary mb-1">Edit</button></a>
                            <button type="button" class="btn btn-danger mb-1" onclick="confirmDelete('<%= rs.getString("food_id")%>','<%= rs.getString("food_name")%>')">Delete</button>
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
             <script>
                 
               function confirmDelete(foodid,foodName) {
            var isConfirmed = confirm("Are you sure you want to delete the item '" + foodName + "'?");
            
            if (isConfirmed) {            
            window.location.href = "<%=request.getContextPath()%>/DeleteFoodItem?foodid=" + encodeURI(foodid);
            }
        }
             </script>
<jsp:include page="include/footer.jsp" /> 
