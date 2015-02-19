#include <iostream>

using namespace std;

extern "C" int add(int x, int y);

int main(){

	int x, y;

	cout << "First Number: ";
	cin >> x;
	cout << "Second Number: ";
	cin >> y;

	cout << "Answer: " << x << " + " << y << " = " << add(x, y) << endl;
	
	return 0;
}
