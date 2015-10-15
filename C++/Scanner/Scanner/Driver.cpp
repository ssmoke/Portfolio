/*
* Scanner for the Mini-Pascal langauge
* Scott Smoke
* CS 421 Automata Theory and Compiler
* Spring 2015
* Professor: Dr. James Jerkins
* Due Date: March 20, 2015
*/
#include <iostream>
#include <string>
#include <fstream>
#include "Scanner.cpp"
#include "SymbolTable.cpp";
#include "Error.cpp"
#include "Preprocessor.cpp"
#include "Parser.cpp"

using namespace std;

string trim(string str);
vector<string>preprocessor(ifstream& file);
int main()
{
	
	string filename;
	cout << "Please enter a filename for the Mini-Pascal source file" << endl;
	cin >> filename;
	Parser parser = Parser(filename);
	parser.parse();	
	cout << filename << endl;
	cout << "Syntax errors detectecd " << parser.getSyntaxErrors().size() <<endl;
	if (parser.getSyntaxErrors().size() != 0)
	{
		for (auto itr : parser.getSyntaxErrors())
		{
			cout << itr << endl;
		}
	}
	cout << endl;
	cout << "Symantic errors detectecd " << parser.getSymanticErrors().size() <<endl;
	if (parser.getSymanticErrors().size() != 0)
	{
		for (auto itr : parser.getSymanticErrors())
		{
			cout << itr << endl;
		}
	}
	getchar();
	return 0;
}




