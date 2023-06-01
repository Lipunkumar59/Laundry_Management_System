<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<div id="loginPage">
		<section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://cdn.techjockey.com/web/assets/images/techjockey/products/laundrylogo.png"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form action="/loginUser" method="post">

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h3 fw-bold mb-0">Laundry Management System</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                  <div class="form-outline mb-4">
                    <input type="mobileNo" id="mobileNo" name="mobileNo" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Mobile No</label>
                  </div>

                  <div class="form-outline mb-4">
                    <input type="password" id="password" name="password" class="form-control form-control-lg" />
                    <label class="form-label" for="form2Example27">Password</label>
                  </div>

                  <div class="pt-1 mb-4">
                    <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                  </div>

                  <a class="small text-muted" href="#!">Forgot password?</a>
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="#!"
                      style="color: #393f81;" id="register">Register here</a></p>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
	</div>
<div id="registerPage">
		<section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
              <div class="card-body p-4 p-lg-5 text-black">

                <form action="/registerUser" method="post">
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example17">Name :</label>
                    <input id="userName" name="userName" class="form-control form-control-lg" />
                  </div>
                  
                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example17">Mobile No</label>
                    <input id="mobileNo" name="mobileNo" class="form-control form-control-lg" />
                  </div>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example27">Password</label>
                    <input type="password" id="password" name="password" class="form-control form-control-lg" />
                  </div>
					<div class="form-outline mb-4">
                    <label class="form-label" for="form2Example17">Email :</label>
                    <input type="email" id="emailId" name="emailId" class="form-control form-control-lg" />
                  </div>
                  <div class="pt-1 mb-4">
                    <button class="btn btn-dark btn-lg btn-block" type="submit">Register</button>
                  </div>
                </form>
				<p style="color: #393f81;">Don't have an account? <a href="#!"
                      style="color: blue;" id="login">login</a></p>
              </div>
          </div>
        </div>
      </div>
    </div>
    </section>
  </div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$('#registerPage').hide();
	$('#loginPage').show();
	 var msg = '${message}';
	 if(msg != ""){
		 alert(msg)
	 }
	 
});

$("#register").on("click", function() {
	$('#loginPage').hide();
	$('#registerPage').show();
	
});
$("#login").on("click", function() {
	$('#registerPage').hide();
	$('#loginPage').show();
	
});
</script>
</html>