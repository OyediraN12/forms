<?php
	session_start();

    // if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    //     header("location: welcome.php");
    //     exit;
    // }
	function loggedIn(){
		if (isset($_SESSION["email"])) {
			return true;
		}else{
			return false;
		}
	}

	//get all users profile table information
	if (isset($_SESSION["email"])) {
		$email = $_SESSION["email"];

		$details = $mysqli->prepare("SELECT * FROM users WHERE email = ?");
		$details->bind_param("s", $email);
		$details->execute();

		$res = $details->get_result();
		$fetch = $res->fetch_assoc();
		$name = $fetch["name"];
	}