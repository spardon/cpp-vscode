#include <iostream>
#include <vector>
#include <string>

using namespace std;

void example_function()
{
    vector<string> msg{"Hello", "C++", "World", "from", "VS Code"};

    for (const string &word : msg)
    {
        std::cout << word << " ";
    }
    std::cout << std::endl;
}
