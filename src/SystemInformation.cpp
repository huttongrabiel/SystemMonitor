//
// Created by whuty on 3/13/22.
//

#include <iostream>
#include <string.h>
#include <fstream>
#include "SystemInformation.h"

std::string SystemInformation::cpu_temperature() {
    std::string path = "/sys/class/thermal/thermal_zone0/temp";
    std::ifstream thermal_zone0(path);

    if (!thermal_zone0.is_open()) {
        std::cerr << "ERROR: Failed to open file: " << path << ".\n";
    }

    std::string cpu_temperature;
    thermal_zone0 >> cpu_temperature;

    std::string cpu_temperature_decimal;

    int decimal_count = 0;
    for (int i = cpu_temperature.length() - 1; i >= 0; i--) {
        cpu_temperature_decimal.insert(0, 1, cpu_temperature[i]);
        decimal_count++;
        if (decimal_count == 3) {
            cpu_temperature_decimal.insert(0, 1, '.');
            decimal_count = 0;
        }
    }
    thermal_zone0.close();
    return cpu_temperature_decimal;
}

std::string SystemInformation::uptime() {
    std::string path = "/proc/uptime";
    std::ifstream uptime(path);

    if (!uptime.is_open()) {
        std::cerr << "ERROR: Failed to open file: " << path << ".\n";
    }

    std::string file_contents = "";
    while (!uptime.eof()) {
        uptime >> uptime_in_seconds;
    }

    // We only need the value up to the first decimal point we encounter.
    std::string uptime_in_seconds = "";
    for (int i = 0; i < file_contents.length(); i++) {
        if (file_contents[i] == '.')
            break;
        uptime_in_seconds += file_contents[i];
    }

    int int_uptime = Helper::uptime_in_seconds.string_to_int();
    int int_uptime_in_hours = int_uptime / 3600;

    std::string uptime_in_hours = Helper::int_uptime_in_hours.int_to_string();

    return uptime_in_hours;
}
