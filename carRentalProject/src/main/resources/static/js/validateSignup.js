/**
 * 
 */
function validateUsername(username) {
  const regex = /^[a-zA-Z_]+[a-zA-Z0-9_-]*$/;
  return regex.test(username) && username.length >= 3;
}
function validateForm() {
	let username = document.getElementById("username").value;
    let email = document.getElementById("email").value;
    let password = document.getElementById("pwd").value;   
   


    // Basic validation
    if (email === "" || password === "") {
      alert("Please fill in all fields.");
      return false;
    }

    // More advanced validation (e.g., email format)
    if (!isValidEmail(email)) {
      alert("Invalid email address.");
      return false;
    }

    // Password strength check (optional)
    if (password.length < 8) {
      alert("Password must be at least 8 characters long.");
      return false;
    }
	if (!validateUsername(username)) {
	    alert("Invalid username. Username must start with a letter or underscore and be at least 3 characters long.");
	    return false;
	  }

    // Additional validation rules as needed

    return true;
  }

  function isValidEmail(email) {
    // Regular expression for email validation
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);   

  }

