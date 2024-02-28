function validateFoodForm() {
            var foodName = document.getElementById("foodtitle").value;
            var foodDescription = document.getElementById("exampleInputPassword1").value;
            var foodImage = document.getElementById("FoodImgFile").value;
            var foodCategory = document.getElementsByName("food_category")[0].value;
            var foodPrice = document.getElementById("food_price").value;

            // Basic validation, you can add more checks as needed
            if (foodName.trim() === "") {
                alert("Please enter a valid Food Name.");
                return false;
            }

            if (foodDescription.trim() === "") {
                alert("Please enter a valid Food Description.");
                return false;
            }

            if (foodImage.trim() === "") {
                alert("Please select a Food Image.");
                return false;
            }

            if (foodCategory.trim() === "") {
                alert("Please select a valid Category.");
                return false;
            }

            if (foodPrice.trim() === "" || isNaN(foodPrice)) {
                alert("Please enter a valid numeric Food Price.");
                return false;
            }

            // Add more validation checks if needed

            return true; // If all validations pass, submit the form
        }        
        