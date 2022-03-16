//
// Created by whuty on 3/13/22.
//

#ifndef SYSTEMMONITOR_SYSTEMINFORMATION_H
#define SYSTEMMONITOR_SYSTEMINFORMATION_H

#include <iostream>
#include <string.h>

class SystemInformation {
public:
    static std::string cpu_temperature();
    static std::string uptime();
};

#endif //SYSTEMMONITOR_SYSTEMINFORMATION_H
