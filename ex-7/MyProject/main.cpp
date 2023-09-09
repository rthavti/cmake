#include <iostream>
#include "config.h"

int main() {
    std::cout << "MyApp Version: " << MY_APP_VERSION << std::endl;

    #ifdef ENABLE_FEATURE
    std::cout << "Special feature is enabled." << std::endl;
    #else
    std::cout << "Special feature is disabled." << std::endl;
    #endif

    return 0;
}

