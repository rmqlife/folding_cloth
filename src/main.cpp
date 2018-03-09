#include <iostream>
#include <fstream>
#include <boost/filesystem.hpp>
using namespace boost::filesystem;
using namespace std;
int main(int argc, char *argv[])
{
    current_path("/home/rmqlife/hello");
    int x, y;
    cin >> x >> y;
    cout << x + y << endl;
}
