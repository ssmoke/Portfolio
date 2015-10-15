/*
* Scanner for the Mini-Pascal langauge
* Scott Smoke
* CS 421 Automata Theory and Compiler
* Spring 2015
* Professor: Dr. James Jerkins
* Due Date: March 20, 2015
*/
#ifndef Error_CPP
#define Error_CPP
#include <string>
#include <iostream>
using namespace std;
/**
* This represents and error.
*
*
*/
class ScannerError
{
private:
	string lineNum;
	string message;

public:
	ScannerError(string lineNumber, string errorMessage)
	{
	
		lineNum = lineNumber;
		message = errorMessage;
		
	}
	ScannerError(const ScannerError &other)
	{
		lineNum = other.lineNum;
		message = other.message;
	}
	
	string getError()
	{
		return (lineNum + "\t\t" + message);
	}



};
#endif;
