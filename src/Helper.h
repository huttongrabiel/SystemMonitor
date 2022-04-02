//
// Created by whuty on 3/13/22.
//

#ifndef SYSTEMMONITOR_HELPER_H
#define SYSTEMMONITOR_HELPER_H

#include <string.h>
#include <iostream>
class Helper {
public:
    static int string_to_int(std::string);
    static std::string int_to_string(int);
    static void centered_imgui_text(std::string);
};

#endif //SYSTEMMONITOR_HELPER_H
