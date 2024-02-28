<jsp:include page="include/sidebar.jsp" />    
<jsp:include page="include/topbar.jsp" />    

        <!-- Container Fluid-->
        <div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Add Staff Members</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Staff Members</li>
            </ol>
          </div>
        </div>
      
        <div class="container-fluid" id="container-wrapper">
          <div class="row">
            <div class="col-lg-12">
              <!-- Form Basic -->
              <div class="card mb-4">
                <div class="card-body">
                  <form>
                    <div class="form-group">
                      <label for="exampleInputEmail1">First Name</label>
                      <input type="email" name="food_title" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        placeholder="Enter email">                      
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Last Name</label>
                      <input type="email" name="food_title" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        placeholder="Enter email">                      
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Email</label>
                      <input type="email" name="food_description" class="form-control" id="exampleInputPassword1" placeholder="Email">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" name="food_description" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Confirm Password</label>
                      <input type="password" name="food_description" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Mobile Number</label>
                      <input type="email" name="food_title" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        placeholder="Enter Number">                      
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Person Image</label>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                      </div>
                    </div>                   
                    <button type="submit" class="btn btn-primary">Create</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
<jsp:include page="include/footer.jsp" /> 
            
         