/*
	Sean Vaccaro
	Cory Feliciano
	Scott Smoke
	CS325
	Project 2 - Math Contest Registration
*/
numberOfMentors =0;
/*
	Manipulate the DOM to add new elements.
	By Scott Smoke
*/
function addSponsor(){
	if( numberOfMentors > 0){
		var element = document.getElementById("removeSponsor");
		element.parentNode.removeChild(element);
	}
	numberOfMentors = numberOfMentors +1;
	
	var element = document.getElementById("addSponsor");
	element.parentNode.removeChild(element);
	
    var div = document.createElement('div');
    div.className = 'sponsorName';
    div.innerHTML = "<label class='sponsorLabel'> Sponsor\'s Name</label>\
					<input class='sponsorInput' type='text' name='name"+numberOfMentors+"'placeholder='First Last' pattern='^[a-zA-z ]{1,32}$'>";
    document.getElementById('sponsors').appendChild(div);
	
	var div = document.createElement('div');
	div.className = "sponsorEmail";
	div.innerHTML = "<label class='sponsorLabel'>Sponsor\'s Email:</label>\
					<input class='sponsorInput' type='email' name='email"+numberOfMentors+"' placeholder='example@example.com'>";
	document.getElementById("sponsors").appendChild(div);
	
	var div = document.createElement('div');
	div.className = "sponsorPhone";
	div.innerHTML = "<label class='sponsorLabel'>Sponsor\'s Phone Number:</label>\
			<input class='sponsorInput' type='text' name='phone"+numberOfMentors+"' placeholder='123-456-7890' pattern ='[0-9]{3}-[0-9]{3}-[0-9]{4}'>";
	document.getElementById("sponsors").appendChild(div);
	
	if(numberOfMentors > 0){
		var div = document.createElement('div');
		div.className = 'removeSponsor';
		div.id = "removeSponsor";
		div.innerHTML = "<input class='removeMentor' id ='removeSponsor' type='button' value='Remove Sponsor' onClick='removeSponsors()'>";
		document.getElementById("sponsors").appendChild(div);
	}
	var div = document.createElement('div');
	div.className= 'addSponsor';
	div.id = "addSponsor";
	div.innerHTML = '<input class="sponsorInput" type="button" value="Add Sponsor" onClick="addSponsor()">';
	document.getElementById("sponsors").appendChild(div);
	if(numberOfMentors==3){
		document.getElementById("addSponsor").style.visibility="hidden";
	}
}
/*
	Removes a sponsor from the DOM
	Scott Smoke

*/
function removeSponsors(){
	var childs = document.getElementById("sponsors").getElementsByTagName('div');
	var size = childs.length;
	document.getElementById("addSponsor").style.visibility="visible";
	if(numberOfMentors == 1){
		var element = childs[childs.length-3];
		element.parentNode.removeChild(element);
		element = childs[childs.length-3];
		element.parentNode.removeChild(element);
		element = childs[childs.length-3];
		element.parentNode.removeChild(element);
		numberOfMentors = numberOfMentors -1;
		element = document.getElementById("removeSponsor");
		element.parentNode.removeChild(element);
	}
	else{
		var element = childs[childs.length-3];
		element.parentNode.removeChild(element);
		element = childs[childs.length-3];
		element.parentNode.removeChild(element);
		element = childs[childs.length-3];
		element.parentNode.removeChild(element);
		numberOfMentors = numberOfMentors -1;
	}

}
function comprehensiveTotal(){
	var element = document.getElementById("comprehensive");
	element.className ="number";
	if(isValid(element)){
		var val = Number(element.value);
		value = val * 5;
		element = document.getElementById("compTotal");
		element.value = value;
		total();
	}
	else{
		element.className = "number_err";
		element = document.getElementById("compTotal");
		element.value = 0;
	}
}
function algebra2Total(){
	var element = document.getElementById("algebra");
	element.className = "number";
	if(isValid(element)){
		var val = Number(element.value);
		value = val * 5;
		element = document.getElementById("algebraTotal");
		element.value = value;
		total();
	}
	else{
		element.className = "number_err";
		element = document.getElementById("algebraTotal");
		element.value = 0;
	}
}
function geometryTot(){
	var element = document.getElementById("geometry");
	element.className = "number";
	if(isValid(element)){
		var val = Number(element.value);
		value = val * 5;
		element = document.getElementById("geometryTotal");
		element.value = value;
		total();
	}
	else{
		element.className = "number_err";
		element = document.getElementById("geometryTotal");
		element.value = 0;
	}
}
function total(){
	var element = document.getElementById("compTotal");
	var val = Number(element.value);
	val = val + Number(document.getElementById("geometryTotal").value)
	val = val + Number(document.getElementById("algebraTotal").value)
	val = val + Number(document.getElementById("schoolFeeTotal").value)
	element = document.getElementById("total");
	element.value = val;
}
function isValid(element){
	var re = new RegExp("^[0-9]{0,2}$");
	var value = Number(element.value);
	if( value >= 0 && !isNaN(value)&& re.exec(value)){
		return true;
	}
	return false;
 }
 function changeTotalPorperty(){
	document.getElementById("total").disabled = false;
	return true;
 
 }
function checkDropDowns(){
	var bool = ((document.getElementById("school").value != "selectSchool") &&
			(document.getElementById("division").value != "selectDiv") &&
			(document.getElementById("testingSite").value != "selectSite"));
	alert("Please ensure a school, division, and testing site are selected");
	return bool;
 
 }
