/*
	JavaScript file for the AutoLoanCalulator website
	Scott Smoke
	CS 325
	Sep. 30, 2014
*/
 function compute(){
	var purchasePrice = validate("purchasePrice");
	var cashRebate = validate("rebate");
	var tradeInValue = validate("tradeInValue");
	var amountOwed = validate("amountOwed");
	var downPayment = validate("downPayment");
	var annualRate = toDecimal(validate("annualRate"));
	var term = validate("term");
	
	var totalOwed = Number(purchasePrice-cashRebate-(tradeInValue-amountOwed)-downPayment);
	var total = Number(totalOwed*(1+ (annualRate*(term/12))));
	var monthlyPayment;
	if(term ==0){
		monthlyPayment =0;	
	}
	else{
		monthlyPayment = Number(total/term);
	}
	monthlyPayment = monthlyPayment || 0; //Checking for NaN
	if(monthlyPayment <0){
		monthlyPayment =0;
	}
	var temp = document.getElementById("monthlyPayment");
	temp.innerHTML = "Monthly Car Payment = $"+ monthlyPayment.toFixed(2);
 }
 /*
	Converts the input to a number
 
 */
 function validate(textField){
	var element = document.getElementById(textField);
	var value = Number(element.value);
	if( value >= 0 && !isNaN(value)){
		return value;
	}
	else{
		element.className="in_error";
		value =0;
		return value;
	}
 
 }
 /*
	Converts a integer to decimal if it is less then 100. Otherwise it just devides
	by 100;
 */
function toDecimal(value){
	if(value <1 && value >= 0){
		return value;
	}
	return value/100;

}
/*
	Clears the form and resets all fields and background-colors.
*/
function clearS(){
	var element= document.getElementById("purchasePrice");
	element.value = "0";
	element.className = "input";
	element= document.getElementById("rebate");
	element.value = "0";
	element.className = "input";
	element= document.getElementById("tradeInValue");
	element.value = "0";
	element.className = "input";
	element= document.getElementById("downPayment");
	element.value = "0";
	element.className = "input";
	element= document.getElementById("annualRate");
	element.value = "0";
	element.className = "input";
	element= document.getElementById("term");
	element.value = "0";
	element.className = "input";
	element= document.getElementById("amountOwed");
	element.value = "0";
	element.className = "input";
	element = document.getElementById("monthlyPayment");
	element.innerHTML = "Monthly Car Payment = $0.00";
	
}