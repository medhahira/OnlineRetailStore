
var attempt = 3; // Variable to count number of attempts.
// Below function Executes on click of login button.

function validate(){
    var login_as = document.getElementById("dropdown").value;
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    if (login_as == "Customer" && username == "c1" && password == "p1"){
        alert ("Login successfully");
        window.location = "http://localhost:3000/cart"; // Redirecting to other page.
        return false;
    }
    else{
        attempt --;// Decrementing by one.
        alert("You have left "+attempt+" attempt;");
        // Disabling fields after 3 attempts.
        if( attempt == 0){
            alert ("Too many attempts");
            window.location = "http://localhost:3000/home"; // Redirecting to other page.

            document.getElementById("dropdown").disabled = true;
            document.getElementById("username").disabled = true;
            document.getElementById("password").disabled = true;
            document.getElementById("submit").disabled = true;
            return false;
        }
    }
}