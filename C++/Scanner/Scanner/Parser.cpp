/*
* Parser for the Mini-Pascal language
* Scott Smoke
* CS 421 Automata Theory and Compiler 
* Spring 2015
* Profesor: Dr. James Jerkins
* Due Date: 4/27/2015
*/
#ifndef Parser_CPP
#define Parser_CPP
#include <string>
#include "Scanner.cpp"
using namespace std;
/*
* Parser for Mini-P. Every private method is equavalent to the
* EBNF of Mini-P with the same name.
*
*
*
*/
class Parser
{
private: 
	Scanner scanner;
	TableEntry currentToken;
	vector<string> errors;
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void program()
	{
		currentToken = scanner.getToken();
		if (currentToken.getCode() != 1)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " "+ "Expected PROGRAM";
			errors.push_back(msg);
		}
		
		currentToken = scanner.getToken();
		if (currentToken.getCode() != 22)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected Identifier";
			errors.push_back(msg);
		}
		
		currentToken = scanner.getToken();
		if (currentToken.getCode() != 2)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected VAR";
			errors.push_back(msg);
		}
		
		currentToken = scanner.getToken();
		decList();
		
		if (currentToken.getCode() != 3)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "BEGIN";
			errors.push_back(msg);
		}

		currentToken = scanner.getToken();
		stmtList();
		if (currentToken.getCode() != 5)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected END.";
			errors.push_back(msg);
		}

	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void decList()
	{
		//needs testing
		dec();

		while (currentToken.getCode() == 12)
		{
			currentToken = scanner.getToken();
			dec();
		}
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void stmtList()
	{
		//currentToken = scanner.getToken();
		stmt();

		while (currentToken.getCode() == 12)
		{
			currentToken = scanner.getToken();
			stmt();
			if (currentToken.getCode() != 12)
			{
				string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected ;";
				errors.push_back(msg);
			}
		}

	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void  dec()
	{
		idList();

		if (currentToken.getCode() != 13)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected :";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		type();
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void type()
	{
		if (currentToken.getCode() != 6 )
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected INTEGER";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void idList()
	{
	
		if (currentToken.getCode() != 22)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected Identifier";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		while (currentToken.getCode() == 14)
		{
			currentToken = scanner.getToken();
			if (currentToken.getCode() != 22)
			{
				//handle error
				string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected Identifier";
				errors.push_back(msg);
			}
			currentToken = scanner.getToken();
		}
		
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void stmt()
	{
		if (currentToken.getCode() == 22)
		{
			assign();
		}
		else if (currentToken.getCode() == 8)
		{
			currentToken = scanner.getToken();
			read();
		}
		else if (currentToken.getCode() == 9)
		{
			currentToken = scanner.getToken();
			write();
		}
		else if (currentToken.getCode() == 7)
		{
			currentToken = scanner.getToken();
			For();
		}
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void assign()
	{
		if (currentToken.getCode() != 22)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected Identifier";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		if (currentToken.getCode() != 15)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected :=";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		exp();
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void exp()
	{
		term();

		while (currentToken.getCode() == 16 || currentToken.getCode() == 17)
		{
			currentToken = scanner.getToken();
			term();
		}

	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void term()
	{
		factor();

		while (currentToken.getCode() == 18 || currentToken.getCode() == 19)
		{
			currentToken = scanner.getToken();
			factor();
		}
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void factor()
	{
		if (currentToken.getCode() == 22) 
		{
			currentToken = scanner.getToken();
			return;
		}
		else if (currentToken.getCode() == 23)
		{
			currentToken = scanner.getToken();
			return;
		}
		else if (currentToken.getCode() == 20)
		{
			currentToken = scanner.getToken();
			exp();
			currentToken == scanner.getToken();
			if (currentToken.getCode() != 21)
			{
				//handle error
				string msg = scanner.getLineNum() + " " + currentToken.getName() + " " + "Expected )";
				errors.push_back(msg);
			}

		}
		else
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected Identifier, Integer, or expression";
			errors.push_back(msg);
		}
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void read()
	{
		if (currentToken.getCode() != 20)
		{
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected (";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		idList();
		if (currentToken.getCode() != 21)
		{
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected )";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		

	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void write()
	{
		if (currentToken.getCode() != 20)
		{
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected (";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		idList();
		if (currentToken.getCode() != 21)
		{
			//handle error
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected )";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void For()
	{
		indexEx();
		
		if (currentToken.getCode() != 11)
		{
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected DO";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		body();
		currentToken = scanner.getToken();
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void indexEx()
	{
		if (currentToken.getCode() != 22)
		{
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected an Identifier";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		if (currentToken.getCode() != 15)
		{
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected :=";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		exp();
		if (currentToken.getCode() != 10)
		{
			string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected TO";
			errors.push_back(msg);
		}
		currentToken = scanner.getToken();
		exp();
	}
	/*
	* See EBNF for Mini-P
	*
	*
	*/
	void  body()
	{
		if (currentToken.getCode() == 3)
		{
			currentToken = scanner.getToken();
			stmtList();
			if (currentToken.getCode() != 4)
			{
				//handle error
				string msg = to_string(scanner.getLineNum()) + " " + currentToken.getName() + " " + "Expected  END";
				errors.push_back(msg);
			}
		}
		else
		{
			stmt();
		}
		
	}
	
public:
	Parser(string filename)
	{
		scanner = Scanner(filename);
	}
	void parse()
	{
		program();
	}
	/*
	* Returns errors found by the scanner.
	*
	*
	*/
	vector<string> getSyntaxErrors()
	{
		return scanner.getErrors();
	}
	/*
	* Returns errors found by the parser.
	*
	*/
	vector<string> getSymanticErrors()
	{
		return errors;
	}
	




};
#endif 