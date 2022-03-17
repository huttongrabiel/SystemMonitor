//
// Created by whuty on 3/13/22.
//

#ifndef SYSTEMMONITOR_SYSTEMINFORMATION_H
#define SYSTEMMONITOR_SYSTEMINFORMATION_H

#include <iostream>
#include <string.h>

class SystemInformation {
public:
    static int int_uptime;
    static std::string cpu_temperature();
    static void set_uptime();
    static int uptime_hours();
    static int uptime_minutes();
    static int uptime_seconds();
};

#endif //SYSTEMMONITOR_SYSTEMINFORMATION_H
