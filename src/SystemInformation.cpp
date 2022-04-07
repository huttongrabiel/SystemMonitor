//
// Created by whuty on 3/13/22.
//

#include <iostream>
#include <fstream>
#include <SystemInformation.h>
#include <Helper.h>

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
    int cpu_temperature_string_length = cpu_temperature.length();
    for (int i = cpu_temperature_string_length - 1; i >= 0; i--) {
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

std::vector<std::string> SystemInformation::memory_information() {
    std::string const meminfo_file_path = "/proc/meminfo";
    std::ifstream meminfo(meminfo_file_path);

    if (!meminfo.is_open()) {
        std::cerr << "ERROR: Failed to open file: " << meminfo_file_path << ".\n";
    }

    std::vector<std::string> memory_information {};
    std::string current_file_line;
    while (getline(meminfo, current_file_line)) {
        memory_information.push_back(current_file_line);
        current_file_line = "";
    }

    meminfo.close();

    return memory_information;
}

int SystemInformation::m_int_uptime;

void SystemInformation::current_uptime_from_proc() {
    std::string const path = "/proc/uptime";
    std::ifstream uptime(path);

    if (!uptime.is_open()) {
        std::cerr << "ERROR: Failed to open file: " << path << ".\n";
    }

    std::string file_contents;
    uptime >> file_contents;

    // We only need the value up to the first decimal point we encounter.
    std::string uptime_in_seconds;
    for (auto const& character : file_contents) {
        if (character == '.')
            break;
        uptime_in_seconds += character;
    }

    int int_uptime = Helper::string_to_int(uptime_in_seconds);

    SystemInformation::m_int_uptime = int_uptime;

    uptime.close();
}

int SystemInformation::uptime_hours() {
    int const uptime_in_hours = SystemInformation::m_int_uptime / 3600;
    return uptime_in_hours;
}

int SystemInformation::uptime_minutes() {
    int const uptime_in_minutes = (m_int_uptime / 60) - (SystemInformation::uptime_hours() * 60);
    return uptime_in_minutes;
}

int SystemInformation::uptime_seconds() {
    int const uptime_in_seconds = m_int_uptime - (SystemInformation::uptime_hours() * 3600) - (SystemInformation::uptime_minutes() * 60);
    return uptime_in_seconds;
}