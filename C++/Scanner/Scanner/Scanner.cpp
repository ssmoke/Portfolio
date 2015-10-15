/*
* Scanner for the Mini-Pascal langauge
* Scott Smoke
* CS 421 Automata Theory and Compiler
* Spring 2015
* Professor: Dr. James Jerkins
* Due Date: March 20, 2015
*/
#ifndef Scanner_CPP
#define Scanner_CPP
#include <vector>
#include <iostream>
#include <string>
#include<queue>
#include "SymbolTable.cpp"
#include "Preprocessor.cpp"



class Scanner 
{
private: 
	SymbolTable * tbl;
	//discovered tokens.
	queue<TableEntry> tokens;
	//String that is used to search for tokens
	string buffer;
	PreProcessor preProcessor;
	vector<string> errors;
	int lineNum;
	//end class members


	/*
	* Input: current position in the buffer, buffer, symbol table
	*
	* This checks for digits. If a digit is found it gets added to a queue of
	* discovered tokens and to the symbol table.
	*
	* Output: new current position in the buffer
	*
	*/
	int isDigit(int i, string str, SymbolTable * tbl)
	{
		string digit = "";
		while (str[i] >= '0' && str[i] <= '9' && i < str.size())
		{
			digit = digit + str[i];
			i++;
		}
			if (digit != "")
			{
				tokens.emplace(TableEntry(23, digit));
				tbl->emplace(digit, TableEntry(23, digit));
				return i;
			}
			else
			{
				return i;
			}
	}
	/*
	* Input: current position in the buffer, uffer, symbol table
	*
	* This checks for  identifiers and reservered words. Once a reserved word is encountered
	* it is then added to a queue of discovered tokens. If an identifier is found then the identifier
	* get added to a queue of discovered tokens and it gets added to the symbol table.
	*
	* Output: new current position in the buffer
	*
	*
	*/
	int isIdentifier(int i, string str, SymbolTable *tbl)
	{
		string id = "";
		if (str[i] >= 'A' && str[i] <= 'Z')
		{
			while ((str[i] >= 'A' && str[i] <= 'Z') || (str[i] >= '0' && str[i] <= '9') || (str[i] == '_')    && (i<str.size()))
			{
				id = id + str[i];
				i++;
			}
		}
		if ((str[i] == ' ') || 
			(str[i] == '+') || 
			(str[i] == '-') || 
			(str[i] == '*') || 
			(str[i] == ';') || 
			(str[i] == ',') || 
			(str[i] == '(') || 
			(str[i] == ')') || 
			(str[i] == ':') || (id == "END" && str[i] == '.'))
		{
			if (id != "")
			{
				if (id == "PROGRAM")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "VAR")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "BEGIN")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "END")
				{
					if (str[i] == '.')
					{
						id = id + str[i];
						tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
						return i;
					}
					else
					{
						tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
						return i;
					}

				}
				else if (id == "INTEGER")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "FOR")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "READ")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "WRITE")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "TO")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "DO")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else if (id == "DIV")
				{
					tokens.emplace(TableEntry(tbl->find(id)->second.getCode(), id));
					return i;
				}
				else
				{
					if (id.size() < 16)
					{
						tokens.emplace(TableEntry(22, id));
						tbl->emplace(id, TableEntry(22, id));
					}
					else
					{
						//errors
						errors.push_back("Line " +to_string(lineNum) + ": " + id+ " Identifier too long");
					}
				}
				return i;
			}
			else
			{ 
				return i;
			}

		}
		else
		{
			//handling errors
			string error = string(1, str[i]);
			errors.push_back("Line "+ to_string(lineNum) + ": " + error + " Unrecognized token");
			return i;
		
		}

	}
	/*
	* Input : current position in the buffer, buffer, symbo table
	* 
	* Checks for special characters. Once a special character is found it is added
	* to a queue of  discovered tokens.
	* 
	* Output: new current postion in the buffer
	*
	*
	*/
	int isSpecialChar(int i, string str, SymbolTable * tbl)
	{
		int k;
		switch (str[i])
		{
		case ':':
			k = i + 1;
			if (str[k] == '=')
			{
				tokens.emplace(TableEntry(15, ":="));
				return k;
			}
			else
			{
				tokens.emplace(TableEntry(13, ":"));
				return i;
			};
		case ';':
			tokens.emplace(TableEntry(12, ";"));
			return i;
		case ',':
			tokens.emplace(TableEntry(14, ","));
			return i;
		case '(':
			tokens.emplace(TableEntry(20,"("));
			return i;
		case ')':
			tokens.emplace(TableEntry(21, ")"));
			return i;
		default:
			return i;
		}

	}
	/*
	* Input : current position in the buffer, buffer, and symbol table
	* 
	* This recognizes the operators in the mini-Pascal language. ONce an operator is
	* found then the operator gets added to a queue of discovered tokens.
	*
	* Output : new current position in the buffer.
	*
	*/
	int isOperator(int i, string str, SymbolTable * tbl)
	{
		switch (str[i])
		{
		case '+':
			tokens.emplace(TableEntry(16, "+"));
			return i;
		case '-':
			tokens.emplace(TableEntry(17, "-"));
			return i;
		case '*':
			tokens.emplace(TableEntry(18, "*"));
			return i;
		default:
			return i;
		}
	}
	/*
	* Scans the line for tokens
	*
	*
	*
	*/
	void scan(string line, SymbolTable * table)
	{
		buffer = line;
		tbl = table;

		int i = 0;
		while (i < line.size())
		{
			int temp = i;
			//tries each DFA
			i = isDigit(i, line, tbl);
			i = isIdentifier(i, line, tbl);
			i = isSpecialChar(i, line, tbl);
			i = isOperator(i, line, tbl);
			i++;


		}
		
	}


	
public:
	Scanner()
	{
		lineNum = 0;
	}
	Scanner(string filename)
	{
		lineNum = 0;
		tbl = new SymbolTable("reservedWords.txt");
		preProcessor = PreProcessor(filename);
		if (preProcessor.hasLines())
		{
			lineNum++;
			scan(preProcessor.getLine(), tbl);
		}
		
	}
	/*
	* Input : source line and symbol table
	*
	* Constructs a scanner object using a source line and a symbol table.
	* This will scan the lines and find the tokens. The source line becomes
	* the buffer that will be used to discover tokens.
	* 
	* Outut: a constructed object
	*/
	Scanner(string line, SymbolTable * table)
	{
	
		scan(line, table);
	}
	/*
	* Input : None
	* This gets the first element from the queue then pops it off.
	* If there are no more tokens call the preprocessor to get a line
	* if there are no more lines to scan then return a default token
	* Output : the token
	*/
	TableEntry  getToken()
	{ 
		if (hasToken())
		{
			TableEntry te = tokens.front();
			tokens.pop();
			return te;
		}
		else
		{
			return TableEntry();
		}
	}
	/*
	* Input : None
	* Checks to see if the scanner has tokens. If not then it calls the preprocessor
	* to get a new line. If the preprocessor has no more lines then return false.
	* Output : whether or not the queue of discovered tokens is empty
	*/
	bool hasToken()
	{
		if (tokens.size() == 0)
		{
			if (preProcessor.hasLines())
			{
				lineNum++;
				scan(preProcessor.getLine(), tbl);
				return true;
			}
			return false;
			
		}
		return true;
	}
	/*
	* Returns the current line number that the scanner is scanning
	*
	*/
	int getLineNum()
	{
		return lineNum;
	}
	/*
	* Returns the errors that were found 
	*
	*
	*/
	vector<string> getErrors()
	{
		return errors;
	}
	
};

#endif;




