#include <iostream>

using namespace std;

int main(){

	float num1, num2;
	cout << "Enter a number: ";
	cin >> num1;

	cout << "Enter another number: ";
	cin >> num2;

	float x, y;

	x = num1;
	asm(
		"finit;"
		"flds %0;"
		"fsin;"
		"fstps %0;"
		: "+m" (x)
	);
	cout << "Sin(" << num1 << ") = " << x << endl;

	x = num1;
	y = num2;
	asm(
		"finit;"
		"flds %0;"
		"fmul %%st(0), %%st(0);"
		"fstps %0;"
		: "+m" (x)
	);
	asm(
		"finit;"
		"flds %0;"
		"fmul %%st(0), %%st(0);"
		"fstps %0;"
		: "+m" (y)
	);
	asm(
		"finit;"
		"flds %0;"
		"flds %1;"
		"fadd %%st(0), %%st(1);"
		"fstps %0;"
		"fstps %0;"
		: "+m" (x)
		: "m" (y)
	);
	asm(
		"finit;"
		"flds %0;"
		"fsqrt;"
		"fstps %0;"
		: "+m" (x)
	);
	cout << num1 << "^2 + " << num2 << "^2 = " << x << "^2 "<< endl;

	return 0;
}
