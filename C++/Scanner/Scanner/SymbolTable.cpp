/*
* Scanner for the Mini-Pascal langauge
* Scott Smoke
* CS 421 Automata Theory and Compiler
* Spring 2015
* Professor: Dr. James Jerkins
* Due Date: March 20, 2015
*/
#ifndef SymbolTable_CPP
#define SymbolTable_CPP
#include<unordered_map>
#include<fstream>
#include<iostream>
#include "TableEntry.cpp"
using namespace std;

/*
* This class represents a symbol table and inherits from the stl unorderd_map.
*
*
*/
class SymbolTable :public unordered_map<string,TableEntry,TableEntryHash>
{
public:
	SymbolTable() : unordered_map<string, TableEntry,TableEntryHash>()
	{
		
	}
	/*
	* Input : A filename to the file with the reserved words.
	*
	* This reads from a file and adds the reserved words to the symbol table.
	* The file contains lines in the format [reserved word] [code]. This is not checking
	* for errors because no one should mess with it other than the program.
	*
	* Output: A constructed object.
	*/
	SymbolTable(string filename) : unordered_map<string, TableEntry,TableEntryHash>()
	{
		ifstream file(filename);
		string line;
		if(file.is_open()){
			while(getline(file,line)){
				string name = line.substr(0,line.find(' '));
				string code = line.substr(line.find(' '),line.size());
				emplace(name,TableEntry(stoi(code), name));
			}
			file.close();
		}
		else
		{
			cout << "Error while opening file"<<endl;
		}
	
	}



};
#endif;


