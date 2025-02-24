function validateForm() {
  // Get input fields
  var name = document.getElementById("name").value;
  var email = document.getElementById("email").value;
  var password = document.getElementById("password").value;

  // Check if name contains spaces
  if (name.indexOf(' ') >= 0) {
    alert("Username must not contain spaces");
    return false;
  }

  // Check if email is valid
  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    alert("Invalid email format");
    return false;
  }

  // Check password complexity
  var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
  if (!passwordRegex.test(password)) {
    alert("Password must contain at least 8 characters, one uppercase letter, one lowercase letter, and one number");
    return false;
  }

  return true;
}

window.addEventListener("scroll", function () {
  var navBar = document.querySelector(".nav-bar");
  if (window.pageYOffset > 0) {
    navBar.classList.add("shadow");
  } else {
    navBar.classList.remove("shadow");
  }
});

$(document).ready(function () {
  setTimeout(function () {
    $("#alert-message").fadeOut(1000);
  }, 3000);
});

window.addEventListener('load', function () {
  const loader = document.getElementById('loader');
  loader.style.display = 'none';
});

window.addEventListener('beforeunload', function () {
  const loader = document.getElementById('loader');
  loader.style.display = 'block';
});
