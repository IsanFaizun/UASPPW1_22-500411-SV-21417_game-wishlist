function join() {
    alert("Now you join the community");
}

function donate() {
    alert("You have donated $1. Thank you");
}

function send(){
    var output = document.getElementById("output");
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var text = document.getElementById("text").value;
    if (name == "" || email == "" || text == "") {
        alert("Please fill in the available columns before submitting");
    } else {
        var outputText =
          "Hello " +
          name +
          ".<br>" +
          "Thanks for your report." +
          "<br>" +
          "After this, we will immediately provide further news and send it to your email: " +
          "<br>" +
          email;
        output.innerHTML = outputText;
    }
}