5badf904 (suignun 2014-04-09 18:09:55 +0900   1) #include <iostream>
5badf904 (suignun 2014-04-09 18:09:55 +0900   2) #include <fstream>
5badf904 (suignun 2014-04-09 18:09:55 +0900   3) #include <cstdlib>
5badf904 (suignun 2014-04-09 18:09:55 +0900   4) 
5badf904 (suignun 2014-04-09 18:09:55 +0900   5) using namespace std;
e3b8a2f6 (suignun 2014-04-09 19:49:15 +0900   6) //За·Д
5badf904 (suignun 2014-04-09 18:09:55 +0900   7) const int MAX_SIZE = 100;
5badf904 (suignun 2014-04-09 18:09:55 +0900   8) 
5badf904 (suignun 2014-04-09 18:09:55 +0900   9) void addMatrix(const int a[][MAX_SIZE], const int b[][MAX_SIZE], int c[][MAX_SIZE], int row, int col);
5badf904 (suignun 2014-04-09 18:09:55 +0900  10) void readMatrix(ifstream &inStream, int m[][MAX_SIZE], int row, int col);
5badf904 (suignun 2014-04-09 18:09:55 +0900  11) void printMatrix(const int m[][MAX_SIZE],int row, int col);
5badf904 (suignun 2014-04-09 18:09:55 +0900  12) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  13) void main()
5badf904 (suignun 2014-04-09 18:09:55 +0900  14) {
5badf904 (suignun 2014-04-09 18:09:55 +0900  15) 	ifstream inStream;
5badf904 (suignun 2014-04-09 18:09:55 +0900  16) 	int numTestCases;
5badf904 (suignun 2014-04-09 18:09:55 +0900  17) 	int a[MAX_SIZE][MAX_SIZE];
5badf904 (suignun 2014-04-09 18:09:55 +0900  18) 	int b[MAX_SIZE][MAX_SIZE];
5badf904 (suignun 2014-04-09 18:09:55 +0900  19) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  20) 	inStream.open("input.txt");
5badf904 (suignun 2014-04-09 18:09:55 +0900  21) 	if(inStream.fail())
5badf904 (suignun 2014-04-09 18:09:55 +0900  22) 	{
5badf904 (suignun 2014-04-09 18:09:55 +0900  23) 		cerr<<"Input file opening failed.\n";
5badf904 (suignun 2014-04-09 18:09:55 +0900  24) 		exit(1);
5badf904 (suignun 2014-04-09 18:09:55 +0900  25) 	}
5badf904 (suignun 2014-04-09 18:09:55 +0900  26) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  27) 	inStream>>numTestCases;
5badf904 (suignun 2014-04-09 18:09:55 +0900  28) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  29) 	for(int i=0; i<numTestCases; i++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  30) 	{
5badf904 (suignun 2014-04-09 18:09:55 +0900  31) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  32) 		int row, col;
5badf904 (suignun 2014-04-09 18:09:55 +0900  33) 		int num;
5badf904 (suignun 2014-04-09 18:09:55 +0900  34) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  35) 		inStream>>row>>col;
5badf904 (suignun 2014-04-09 18:09:55 +0900  36) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  37) 		for(int i=0; i<row; i++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  38) 		{
5badf904 (suignun 2014-04-09 18:09:55 +0900  39) 			for(int j=0; j<col; j++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  40) 			{
5badf904 (suignun 2014-04-09 18:09:55 +0900  41) 				inStream>>num;
5badf904 (suignun 2014-04-09 18:09:55 +0900  42) 				a[i][j] = num;
5badf904 (suignun 2014-04-09 18:09:55 +0900  43) 			}
5badf904 (suignun 2014-04-09 18:09:55 +0900  44) 		}
5badf904 (suignun 2014-04-09 18:09:55 +0900  45) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  46) 		for(int i=0; i<row; i++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  47) 		{
5badf904 (suignun 2014-04-09 18:09:55 +0900  48) 			for(int j=0; j<col; j++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  49) 			{
5badf904 (suignun 2014-04-09 18:09:55 +0900  50) 				inStream>>num;
5badf904 (suignun 2014-04-09 18:09:55 +0900  51) 				b[i][j] = num;
5badf904 (suignun 2014-04-09 18:09:55 +0900  52) 			}
5badf904 (suignun 2014-04-09 18:09:55 +0900  53) 		}
5badf904 (suignun 2014-04-09 18:09:55 +0900  54) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  55) 		for(int i=0; i<row; i++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  56) 		{
5badf904 (suignun 2014-04-09 18:09:55 +0900  57) 			for(int j=0; j<col; j++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  58) 			{
5badf904 (suignun 2014-04-09 18:09:55 +0900  59) 				cout<<a[i][j] + b[i][j]<<" ";
5badf904 (suignun 2014-04-09 18:09:55 +0900  60) 			}
5badf904 (suignun 2014-04-09 18:09:55 +0900  61) 			cout<<endl;
5badf904 (suignun 2014-04-09 18:09:55 +0900  62) 		}
5badf904 (suignun 2014-04-09 18:09:55 +0900  63) 	}
5badf904 (suignun 2014-04-09 18:09:55 +0900  64) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  65) }
5badf904 (suignun 2014-04-09 18:09:55 +0900  66) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  67) void addMatrix(int a[][MAX_SIZE], int b[][MAX_SIZE], int c[][MAX_SIZE], int row, int col)
5badf904 (suignun 2014-04-09 18:09:55 +0900  68) {
5badf904 (suignun 2014-04-09 18:09:55 +0900  69) 	for(int i=0; i<row; i++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  70) 	{
5badf904 (suignun 2014-04-09 18:09:55 +0900  71) 		for(int j=0; j<col; j++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  72) 		{
5badf904 (suignun 2014-04-09 18:09:55 +0900  73) 			c[i][j] = a[i][j] + b[i][j]; 
5badf904 (suignun 2014-04-09 18:09:55 +0900  74) 		}
5badf904 (suignun 2014-04-09 18:09:55 +0900  75) 	}
5badf904 (suignun 2014-04-09 18:09:55 +0900  76) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  77) }
5badf904 (suignun 2014-04-09 18:09:55 +0900  78) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  79) void readMatrix(ifstream &inStream, int m[][MAX_SIZE], int row, int col)
5badf904 (suignun 2014-04-09 18:09:55 +0900  80) {
5badf904 (suignun 2014-04-09 18:09:55 +0900  81) 	for(int i=0; i<row; i++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  82) 	{
5badf904 (suignun 2014-04-09 18:09:55 +0900  83) 		for(int j=0; j<col; j++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  84) 		{
5badf904 (suignun 2014-04-09 18:09:55 +0900  85) 			inStream>>m[i][j];
5badf904 (suignun 2014-04-09 18:09:55 +0900  86) 		}
5badf904 (suignun 2014-04-09 18:09:55 +0900  87) 	}
5badf904 (suignun 2014-04-09 18:09:55 +0900  88) }
5badf904 (suignun 2014-04-09 18:09:55 +0900  89) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  90) void printMatrix(int m[][MAX_SIZE], int row, int col)
5badf904 (suignun 2014-04-09 18:09:55 +0900  91) {
5badf904 (suignun 2014-04-09 18:09:55 +0900  92) 	for(int i=0; i<row; i++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  93) 	{
5badf904 (suignun 2014-04-09 18:09:55 +0900  94) 		for(int j=0; j<col; j++)
5badf904 (suignun 2014-04-09 18:09:55 +0900  95) 		{
5badf904 (suignun 2014-04-09 18:09:55 +0900  96) 			cout<<m[i][j]<<" ";
5badf904 (suignun 2014-04-09 18:09:55 +0900  97) 		}
5badf904 (suignun 2014-04-09 18:09:55 +0900  98) 
5badf904 (suignun 2014-04-09 18:09:55 +0900  99) 		cout<<endl;
5badf904 (suignun 2014-04-09 18:09:55 +0900 100) 	}
5badf904 (suignun 2014-04-09 18:09:55 +0900 101) }
