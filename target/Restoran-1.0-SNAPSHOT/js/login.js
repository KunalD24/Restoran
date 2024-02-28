function ValidateLoginForm() {
            
            var email = document.getElementById("email").value;
            var pass = document.getElementById("pass").value;
            

            // Check if any field is empty
            if (email.trim() === "" || pass.trim() === "") {
                alert("All fields are required");
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

            return true; // Form is valid
        }