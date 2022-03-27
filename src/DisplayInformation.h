//
// Created by whuty on 3/17/22.
//

#ifndef SYSTEMMONITOR_DISPLAYINFORMATION_H
#define SYSTEMMONITOR_DISPLAYINFORMATION_H

class DisplayInformation {
public:
    static void display_cpu_temperature();
    static void display_gpu_temperature();
    static void display_uptime();
    static void display_memory_information();
};

#endif //SYSTEMMONITOR_DISPLAYINFORMATION_H
