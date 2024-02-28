function ValidateContactForm() {      
  let subject = document.getElementById("subject").value;
  let message = document.getElementById("message").value;
  var SubjectRegex = /^[A-Za-z]+$/;
  if (subject.trim() === " " || !SubjectRegex.test(subject)) {
    alert("Enter Valid Subject");
    return false;
  }
  if (message.trim() === "") {
     alert("Enter a valid Message");
     return false;
    }
    return true;
}