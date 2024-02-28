function ValidateRegisterForm() {
            var fname = document.getElementById("fname").value;
            var lname = document.getElementById("lname").value;
            var mobile = document.getElementById("mobile").value;
            var email = document.getElementById("email").value;
            var pass = document.getElementById("pass").value;
            var re_pass = document.getElementById("re_pass").value;

            // Check if any field is empty
            if (fname.trim() === "" || lname.trim() === "" || mobile.trim() === "" || email.trim() === "" || pass.trim() === "" || re_pass.trim() === "") {
                alert("All fields are required");
                return false;
            }

            // Validate First Name
            var nameRegex = /^[A-Za-z]+$/;
            if (!nameRegex.test(fname)) {
                alert("Invalid First Name");
                return false;
            }

            // Validate Last Name
            if (!nameRegex.test(lname)) {
                alert("Invalid Last Name");
                return false;
            }

            // Validate Mobile Number
            var mobileRegex = /^\d{10}$/;
            if (!mobileRegex.test(mobile)) {
                alert("Invalid Mobile Number");
                return false;
            }

            // Validate Email
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                alert("Invalid Email Address");
                return false;
            }

            // Validate Password
            if (pass.length < 6) {
                alert("Password should be at least 6 characters");
                return false;
            }

            // Validate Password Match
            if (pass !== re_pass) {
                alert("Passwords do not match");
                return false;
            }

            return true; // Form is valid
        }