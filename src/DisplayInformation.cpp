//
// Created by whuty on 3/17/22.
//
#include <DisplayInformation.h>
#include <SystemInformation.h>
#include <Formatting.h>
#include "imgui.h"

void DisplayInformation::display_cpu_temperature() {
    ImGui::Text("CPU Temperature");

    ImGui::TableNextColumn();

    Formatting::vertical_spacing(5);

    ImGui::Text("%s C", SystemInformation::cpu_temperature().c_str());

    ImGui::TableNextRow();
    ImGui::TableNextColumn();
}

void DisplayInformation::display_gpu_temperature() {
    ImGui::Text("GPU Temperature");

    ImGui::TableNextColumn();

    Formatting::vertical_spacing(5);

    std::string gpu_temp_placeholder = "<placeholder>";
    ImGui::Text("%s", gpu_temp_placeholder.c_str());
}

void DisplayInformation::display_uptime() {
    ImGui::Text("Uptime");

    ImGui::TableNextColumn();

    Formatting::vertical_spacing(5);

    SystemInformation::set_uptime();
    ImGui::Text("%d hours %d minutes %d seconds", SystemInformation::uptime_hours(), SystemInformation::uptime_minutes(), SystemInformation::uptime_seconds());
}

void DisplayInformation::display_memory_information() {
    std::vector<std::string> memory_information = SystemInformation::memory_information();

    for (auto const& line : memory_information)
        ImGui::Text(line.c_str());
}