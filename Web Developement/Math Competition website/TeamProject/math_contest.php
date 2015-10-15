
<!DOCTYPE html>
<!--
Sean Vaccaro
Cory Feliciano
Scott Smoke
CS325
Project 2 - Math Contest Registration
-->
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Alabama State High School Math Contest 2015 Registration</title>
	<link rel="stylesheet" href="math_contest.css">
	<script src = "math_contest.js"></script>
</head>
<body>
	<h1>Alabama State High School Math Contest <br> 2015 Registration</h1>
	<form action = "process_form.php" method ="post" onsubmit = "return checkDropDowns()">
	<div class="school">
		<p>School name
			<select id = "school" name = 'school'>
				<option value="selectSchool">-Select your school-</option>
				<?php
					$db = mysqli_connect("localhost","testuser","test6","mathdb"); //database handler
					if(mysqli_connect_errno()){
						die("unable to connect to database".mysqli_connect_error());
					}
					$schools = mysqli_query($db,"SELECT schoolid,name FROM schools"); //row-set
					if(!$schools){
						die("query failed: ".mysqli_error($db));
					}

					while($school = mysqli_fetch_row($schools)){ //parsing row-set until the next is null
						echo "<option value =$school[0]>$school[1]</option>"; //setting the schoolid as value and displaying school name
						
					}
				?>
		</select>
	</div>	
	<div class="sponsors" id = "sponsors">
		<h3>Team Sponsor's</h3>
		<div class="sponsorName">
			<label class="sponsorLabel">Sponsor's Name:</label>
			<input class="sponsorInput" type="text" name="name" placeholder="First Last" pattern="^[a-zA-z ]{1,32}$" required>
		</div>
		<div class="sponsorEmail">
			<label class="sponsorLabel">Sponsor's Email:</label>
			<input class="sponsorInput" type="email" name="email" placeholder="example@example.com" required>
		</div>
		<div class="sponsorPhone">
			<label class="sponsorLabel">Sponsor's Phone Number:</label>
			<input class="sponsorInput" type="text" name="phone" placeholder="123-456-7890" pattern ="^[\d]{3}-[\d]{3}-[\d]{4}$" required>
		</div>
		<div class="addSponsor" id = "addSponsor">
			<input class="sponsorInput" type="button" value="Add Sponsor" onClick="addSponsor()">
		</div>
	</div>
	<div class="divisions">
		<div class="column">
			<u>Division 1</u>
			<p>Division 1 description goes here! Lots of information should go here
			   because it is important to give lots of information!</p>
		</div>
		<div class="column">
			<u>Division 2</u>
			<p>Division 2 description goes here! Lots of information should go here
			   because it is important to give lots of information!</p>
		</div>
		<div class="column">
			<u>Division 3</u>
			<p>Division 3 description goes here! Lots of information should go here
			   because it is important to give lots of information!</p>
		</div>
		<div class="divisionSelect">
			<p>Division
			<select name = "division">
				<option value="selectDiv">-Select your division-</option>
				<?php
					$db = mysqli_connect("localhost","testuser","test6","mathdb"); //database handler
					if(mysqli_connect_errno()){
						die("unable to connect to database".mysqli_connect_error());
					}
					$divs = mysqli_query($db,"SELECT division FROM divisions"); //row-set
					if(!$divs){
						die("query failed: ".mysqli_error($db));
					}

					while($div = mysqli_fetch_row($divs)){ //parsing row-set until the next is null
						echo "<option value =$div[0]>$div[0]</option>"; //setting the schoolid as value and displaying school name
						
					}
				?>
			</select>
		</div>
		<div class="testSite">
			<p>Testing Site
			<select name ="testingSite">
				<option value="selectSite">-Select your testing site-</option>
				<?php
					$db = mysqli_connect("localhost","testuser","test6","mathdb"); //database handler
					if(mysqli_connect_errno()){
						die("unable to connect to database".mysqli_connect_error());
					}
					$sites = mysqli_query($db,"SELECT id, name FROM testingsites"); //row-set
					if(!$divs){
						die("query failed: ".mysqli_error($db));
					}

					while($site= mysqli_fetch_row($sites)){ //parsing row-set until the next is null
						echo "<option value =$site[0]>$site[1]</option>"; //setting the schoolid as value and displaying school name
						
					}
				?>
			</select>
		</div>
	</div>
	<div class="numberOfStudents">
		<p>Number of students participating:</p>
		<div class="studentTally">
			<label class="left">Comprehensive</label><input class="number" type="text" name="comprehensive" id ="comprehensive" placeholder ="0" value = "" onchange = "comprehensiveTotal()" pattern ="^[\d]{0,2}$" required>
			<label class="value">X $5.00 =</label><input class="noSelect" placeholder="0" id = "compTotal" value ="" readonly ><br />
			<label class="left">Algebra II w/Trig</label><input class="number" type="text" name="algebra" id = "algebra" value ="" placeholder ="0" onchange = "algebra2Total()" pattern ="^[\d]{0,2}$" required>
			<label class="value">X $5.00 =</label><input class="noSelect" placeholder="0" id ="algebraTotal" value ="" readonly><br />
			<label class="left">Geometry</label><input class="number" type="text" name="geometry" id = "geometry" value ="" placeholder ="0" onchange = "geometryTot()" pattern ="^[\d]{0,2}$" required>
			<label class="value">X $5.00 =</label><input class="noSelect" placeholder="0" id = "geometryTotal" value ="" readonly><br />
			<label class="left">School fee</label><input class="noSelect" value = "1" id = "schoolFee"  readonly>
			<label class="value">X $10.00 =</label><input class="noSelect" value ="10" id = "schoolFeeTotal"  readonly><br />
			<label class="total">Total =</label><input class="noSelect" name = "total" placeholder = "10" id = "total"  readonly>
		</div>
		<div class="register">
			<input class="register" type="submit" value="Register">
		</div>
	</div>
 </form>
	<p class="infoPar">Please make your check for the above amount payable to
	   <a href="http://acotom.wildapricot.org/">Alabama Council of Teachers of Mathematics</a>
	 Mail your check to:
	<p class="infoPar" align="center">University of North Alabama, Dept. of Mathematics<br />
	   ATTN: AL HS Math Contest<br />
	   One Harrison Plaza, Box 5051<br />
	   Florence, AL 35632
	</p>
	
</body>
</html>