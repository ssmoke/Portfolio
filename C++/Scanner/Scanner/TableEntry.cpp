/*
* Scanner for the Mini-Pascal langauge
* Scott Smoke
* CS 421 Automata Theory and Compiler
* Spring 2015
* Professor: Dr. James Jerkins
* Due Date: March 20, 2015
*/
#ifndef TableEntry_CPP
#define TableEntry_CPP
#include <string>
using namespace std;

/*
* This class represents a token that will be stored
* in the symbol table.
*
*
*/
class TableEntry
{
private:
	int key =0;
	int code;
	string name;

public:
	TableEntry()
	{
		key = 0;
		code = 0;
		name = "";
	}
	TableEntry(int c, string n)
	{
		code =c;
		name = n;

	}
	TableEntry(const TableEntry& other)
	{
		key = other.key;
		code = other.code;
		name = other.name;
	}

	bool operator==(const TableEntry &te) const
	{
		return (name== te.getName());
	}

	string getName() const
	{
		return name;
	}

	int getCode() const
	{
		return code;
	}
	int getKey()
	{
		return key;
	}
};

/*
* This class is used for the hash function
* that is required by the unordered_map.
*
*
*/ 
class TableEntryHash
{
public:
	/*
	* Input : A constan string reference.
	* 
	* This creates the hash code by iterating through
	* the string and adding the ASCII values.
	*
	* Output : hash value.
	*/
	size_t operator()(const string &te) const
	{
		int hashNum =0;
		for( unsigned int i =0; i < te.size(); i++)
		{
			char c = te[i];
			hashNum = hashNum + (int)c;
		}
		return hashNum;
	}

};
#endif;
