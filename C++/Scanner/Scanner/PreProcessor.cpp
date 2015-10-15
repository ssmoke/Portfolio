/*
* Preprocessor for the Mini-Pascal language
* Scott Smoke
* CS 421 Automata Theory and Compiler
* Spring 2015
* Profesor: Dr. James Jerkins
* Due Date: 4/27/2015
*/
#ifndef PreProcessor_CPP
#define PreProcessor_CPP
#include <string>
#include<vector>
#include<queue>
#include <fstream>
#include <iostream>
using namespace std;
class PreProcessor
{
private:
	queue<string> lines;
	/*
	* Input : A string
	*
	* This will trim leading whitespace from a string.
	*
	* Output: The cleaned up string.
	*/
	string trim(string str)
	{
		int i = 0;

		while (str[i] == ' ' || str[i] == '\t' || str[i] == '\n')
		{
			str[i] = '\0';
			i++;
		}
		str = str.substr(i, str.size());
		return str;
	}

public:
	PreProcessor()
	{

	}
	/*
	* Input : a stream
	* This will read in an entire source file in the
	* Mini-Pascal programming language. This will remove
	* comments and compress whitespace.
	*/
	PreProcessor(string filename)
	{
		ifstream file(filename);
		//current character
		char c;
		//next character
		char la;
		string source = "";
		//whether or not it is reading in a comment
		bool comment = false;
		//vector<string> lines;

		if (file.is_open())
		{
			while (file.get(c))
			{
				c = toupper(c);
				la = toupper(file.peek());
				if (c == '(' && la == '*')
				{
					comment = true;
				}
				else if (c == '*' && la == ')')
				{
					comment = false;
					//gets the closing paren
					file.get(c);
				}
				else if (comment == false)
				{
					if (c == ' ' && la == ' ')
					{
						//condenses multiple whitespaces
					}
					else
					{
						if (c == '\n' || la == EOF)
						{
							source = trim(source);
							if (source == "\0")
							{
								//ignoring blank lines
							}
							else
							{
								//getting the last line in the file using the EOF constant
								if (la == EOF)
								{
									//replace it with a blank
									source = source + c + " ";
								}
								//replace newlines with a blank
								lines.emplace(source + " ");
							}
							source = "";
						}
						else
						{
							source = source + c;
						}
					}
				}
			}
			file.close();

		}
		else
		{
			cout << "File Not found" << endl;
		}
	}
	/*
	* Gets a line from the queue
	*
	*
	*
	*
	*/
	string getLine()
	{
		string temp = lines.front();
		lines.pop();
		return temp;
	}
	/*
	* Sees if the queue has any lines left.
	*
	*
	*
	*/
	bool hasLines()
	{
		if (lines.size() == 0)
		{
			return false;
		}
		return true;
	}
	


};
#endif
