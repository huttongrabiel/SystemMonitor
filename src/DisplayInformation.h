//
// Created by whuty on 3/17/22.
//

#ifndef SYSTEMMONITOR_DISPLAYINFORMATION_H
#define SYSTEMMONITOR_DISPLAYINFORMATION_H

#include <iostream>

class DisplayInformation {
public:
    DisplayInformation();
    static void display_main_histogram();
    static void display_memory_load_progress_bar();
    static void display_cpu_temperature();
    static void display_gpu_temperature();
    static void display_uptime();
    static void display_memory_information();
};

#endif //SYSTEMMONITOR_DISPLAYINFORMATION_H
