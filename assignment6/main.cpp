#include <iostream>

using namespace std;

extern "C" void asmMain( void );

extern "C" 
int getGrade( void )
{
	int x;
	cout << "Enter their grade: ";
	cin >> x;
	return x;
}

extern "C"
void printGrade( char c )
{
	cout << "Your grade is: " << c << endl;
}

int main(){
	asmMain();
	return 0;
}
