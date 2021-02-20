<form>
  <div class="container">
    <h1>Register Page</h1>
    <a id="home" type="text">Go home</a>
    <hr>
		
    <label><b>id</b></label>
    <input id="id" type="text" placeholder="Enter Email" name="email">

    <label><b>Password</b></label>
    <input id="password" type="text" placeholder="Enter Password" name="psw">

    <button id="register" class="registerbtn">Register</button>
    
  </div>
</form>
<script>
	$('#register').click(function(e) {
		e.preventDefault()
		regi.regi(`${c}`)
	})
	

	$('#home').click(function() {
		location.href = `${c}`
	})
	

</script>
