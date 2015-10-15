<?php
/***************************************************************************************************************
	This php file adds the sponsors information to the mathdb, emails a receipt, and prints a receipt to the browser.
	This works along side the math_contest.php
	Scott Smoke
	Sean Vaccaro
	Cory Feliciano
	
****************************************************************************************************************/
	//initializing fields
	$division = filter_var($_POST['division'], FILTER_SANITIZE_NUMBER_INT);
	unset($_POST['division']);
	$testingSite = filter_var($_POST['testingSite'], FILTER_SANITIZE_STRING);
	unset($_POST['testingSite']);
	$school = filter_var($_POST['school'],FILTER_SANITIZE_STRING);
	unset($_POST['school']);
	$comp = filter_var($_POST['comprehensive'],FILTER_SANITIZE_NUMBER_INT);
	unset($_POST['comprehensive']);
	$algebra = filter_var($_POST['algebra'],FILTER_SANITIZE_NUMBER_INT);
	unset($_POST['algebra']);
	$geometry = filter_var($_POST['geometry'],FILTER_SANITIZE_NUMBER_INT);
	unset($_POST['geometry']);
	$total = filter_var($_POST['total'],FILTER_SANITIZE_NUMBER_INT);
	unset($_POST['total']);

	//array containing sponsors information
	$sponsorsInfo = array();
	$sponsorsInfo = array_values($_POST); //indexed array
	$numOfSponsors = count($sponsorsInfo)/3; //total sponsors

	addToDB($sponsorsInfo,$numOfSponsors);
	$message = getMessage($numOfSponsors);
	sendReciept($message); //email confirmation
	
	echo $message; //output receipt to browser

	
/************************************************************************************
This serves as the thank you page and the receipt that gets sent to the sponsors email
*************************************************************************************/
function getMessage($numOfSponsors){
	global $sponsorsInfo,$division,$testingSite,$school,$comp,$algebra,$geometry,$total;
	//$sponsors = implode(" ",$sponsorsInfo);
	$message = "
	<DOCTYPE! html>
	<head>
	<meta charset='utf-8'>
	<title>Alabama State High School Math Contest 2015 Registration</title>
	<link rel='stylesheet' href='math_contest.css'>
	<script src = 'math_contest.js'></script>
	</head> 
<body>
	<p>Sponsors <br />";
	foreach($sponsorsInfo as $key => $value){
		$message = $message.$value."<br />";
	}
	$message = $message."
	<p>Testing Site $testingSite
	<p>School $school
	<p>Division $division
	<p>Comprehensive              $comp <br/>
	   Algebra II/w Trig		  $algebra <br />
	   Geometry		              $geometry <br />
	   Total		              $total
	<p class='infoPar'>Please make your check for the above amount payable to
	<a href='http://acotom.wildapricot.org/'>Alabama Council of Teachers of Mathematics</a>.
	Mail your check to:
	<p class='infoPar' align='center'>University of North Alabama, Dept. of Mathematics<br />
   ATTN: AL HS Math Contest<br />
   One Harrison Plaza, Box 5051<br />
   Florence, AL 35632
</p>
</body>
</html>";
	return $message;
}
/********************************************************************************
This send the receipt to the sponsor's email.
*********************************************************************************/
function sendReciept($message){
	/*
		UNA's SMTP Information
		SMTP setting
		Server name: smtp.office365.com
		Port: 587
		Encryption method: TLS

	*/
	require_once('PHPMailer-master\class.phpmailer.php');
	require_once('PHPMailer-master\class.smtp.php');
	global $sponsorsInfo;
	$email = null;
	$email1 = null;
	$email2 = null;
	$email3 = null;
	
	$email = filter_var($sponsorsInfo['email'],FILTER_SANITIZE_EMAIL);
	if(isset($sponsorsInfo['email1'])){
		$email1= filter_var($sponsorsInfo['email1'], FILTER_SANITIZE_EMAIL);
	}
	if(isset($sponsorsInfo['email2'])){
		$email1= filter_var($sponsorsInfo['email2'],FILTER_SANITIZE_EMAIL);
	}
	if(isset($sponsorsInfo['email3'])){
		$email1= filter_var($sponsorsInfo['email3'],FILTER_SANITIZE_EMAIL);
	}
	
	$e = new PHPMailer();
	$e->IsSMTP();  // telling the class to use SMTP
	$e->Host     = "smtp.office365.com"; // SMTP server
	$e->SMTPAuth = true;
	$e->Port     = 587;
	$e->Username = ""; //your username
	$e->Password  = ""; // please clear if sending an update to other team members
	$e->From      = ''; // your username else UNA servers will block email
	$e->FromName  = 'Math Contest';
	$e->Subject   = 'Registration Receipt';
	$e->Body      = $message;
	$e->IsHTML(true);
	$e->AddAddress($email);
	$e->AddAddress($email1);
	$e->AddAddress($email2);
	$e->AddAddress($email3);
	$e->SMTPSecure = 'tls';
	
	if(!$e->Send()) {
		echo 'Message was not sent.';
		echo 'Mailer error: ' . $e->ErrorInfo;
	} 

}
/************************************************************************
This method is adding to the information to the sponsor and team information to the database.
*************************************************************************/
function addToDB($sponsors, $count){
	global $division, $testingSite, $total,$school;
	//connecting to DB
	$db = mysqli_connect("localhost","testuser","test6","mathdb"); //database handler
	if(mysqli_connect_errno()){
		die("unable to connect to database".mysqli_connect_error());
	}
	//adding team
	$s = mysqli_query($db,"INSERT INTO `mathdb`.`teams` (`id`, `schoolID`, `testingSiteID`, `division`, `fee`) VALUES (NULL,'$school' , '$testingSite','$division','$total')"); 
	if(!$s){
		die("query failed: ".mysqli_error($db));
	}
	// getting last team added
	$teamID = mySqli_query($db,"select id from teams order by id desc limit 1");
	$TID = mySqli_fetch_row($teamID);
	$teamID = $TID[0];
	if(!$teamID){
		die("query failed: ".mysqli_error($db));
	}
	//adding sponsor info to sponsors DB
	for($i =0; $i < $count; $i++){
		$j =$i;
		$name = $sponsors[$j];
		$email = $sponsors[$j+1];
		$phone = $sponsors[$j+2];
		$sp = mySqli_query($db,"INSERT INTO `mathdb`.`sponsors` (`id`, `name`, `email`, `phone`, `teamID`) VALUES (NULL, '$name', '$email', '$phone', '$teamID')"); 
		if(!$sp){
			die("query failed: ".mysqli_error($db));
		}
	
	}
	
	
}

	

	


?>