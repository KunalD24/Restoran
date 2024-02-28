<jsp:include page="include/sidebar.jsp" />    
<%--<jsp:include page="include/topbar.jsp" />--%>    

        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Add Food Items</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Food Items</li>
            </ol>
          </div>
        </div>
      
        <div class="container-fluid" id="container-wrapper">
          <div class="row">
            <div class="col-lg-12">
              <!-- Form Basic -->
              <div class="card mb-4">
                <div class="card-body">
                    <form action="<%=request.getContextPath()%>/AddFoodItem" method="post" enctype="multipart/form-data" autocomplete="off" onsubmit="return validateFoodForm();">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Food Name</label>
                      <input type="text" name="food_name" class="form-control" id="foodtitle"
                        placeholder="Food Name">                      
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Food Description</label>
                      <textarea name="food_description" class="form-control" id="exampleInputPassword1" placeholder="Food Description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Food Image</label>
                      <div class="custom-file">
                          <input type="file" name="food_image" class="custom-file-input" id="FoodImgFile">
                          <label class="custom-file-label" for="customFile">Choose file</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Category</label>
                        <select class="form-control mb-3" name="food_category">                            
                            <option value="Veg">Veg</option>
                            <option value="NonVeg">Non Veg</option>
                        </select>
                    </div>   
                    <div class="form-group">
                      <label for="exampleInputEmail1">Food Price</label>
                      <input type="text" name="food_price" class="form-control" id="food_price"
                        placeholder="Food Price">                      
                    </div>
                    <input type="submit" value="Add Food Item" class="btn btn-primary" name="addfooditem">                    
                  </form>
                </div>
              </div>
            </div>
          </div>
<jsp:include page="include/footer.jsp" />      