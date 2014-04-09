#include <iostream>
#include <fstream>
#include <cstdlib>

using namespace std;
//За·Д
const int MAX_SIZE = 100;

void addMatrix(const int a[][MAX_SIZE], const int b[][MAX_SIZE], int c[][MAX_SIZE], int row, int col);
void readMatrix(ifstream &inStream, int m[][MAX_SIZE], int row, int col);
void printMatrix(const int m[][MAX_SIZE],int row, int col);

void main()
{
	ifstream inStream;
	int numTestCases;
	int a[MAX_SIZE][MAX_SIZE];
	int b[MAX_SIZE][MAX_SIZE];

	inStream.open("input.txt");
	if(inStream.fail())
	{
		cerr<<"Input file opening failed.\n";
		exit(1);
	}

	inStream>>numTestCases;

	for(int i=0; i<numTestCases; i++)
	{

		int row, col;
		int num;

		inStream>>row>>col;

		for(int i=0; i<row; i++)
		{
			for(int j=0; j<col; j++)
			{
				inStream>>num;
				a[i][j] = num;
			}
		}

		for(int i=0; i<row; i++)
		{
			for(int j=0; j<col; j++)
			{
				inStream>>num;
				b[i][j] = num;
			}
		}

		for(int i=0; i<row; i++)
		{
			for(int j=0; j<col; j++)
			{
				cout<<a[i][j] + b[i][j]<<" ";
			}
			cout<<endl;
		}
	}

}

void addMatrix(int a[][MAX_SIZE], int b[][MAX_SIZE], int c[][MAX_SIZE], int row, int col)
{
	for(int i=0; i<row; i++)
	{
		for(int j=0; j<col; j++)
		{
			c[i][j] = a[i][j] + b[i][j]; 
		}
	}

}

void readMatrix(ifstream &inStream, int m[][MAX_SIZE], int row, int col)
{
	for(int i=0; i<row; i++)
	{
		for(int j=0; j<col; j++)
		{
			inStream>>m[i][j];
		}
	}
}

void printMatrix(int m[][MAX_SIZE], int row, int col)
{
	for(int i=0; i<row; i++)
	{
		for(int j=0; j<col; j++)
		{
			cout<<m[i][j]<<" ";
		}

		cout<<endl;
	}
}