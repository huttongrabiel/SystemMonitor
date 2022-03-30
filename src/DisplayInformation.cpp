//
// Created by whuty on 3/17/22.
//
#include <DisplayInformation.h>
#include <SystemInformation.h>
#include "imgui.h"
#include <Helper.h>

void DisplayInformation::display_main_histogram() {
    std::string cpu_temperature_string = SystemInformation::cpu_temperature();
    int cpu_temperature_int = Helper::string_to_int(cpu_temperature_string.substr(0,2)); // Substring to go from 33.000 to just 33
    auto cpu_temperature_float = static_cast<float>(cpu_temperature_int);

    SystemInformation::current_uptime_from_proc();
    int uptime = SystemInformation::m_int_uptime / 3600;
    auto uptime_float = static_cast<float>(uptime);

    static float main_histogram_values[] = {cpu_temperature_float, uptime_float};

    const char* overlay_labels = "CPU                                            Uptime";
    ImGui::PlotHistogram("", main_histogram_values, 2, 0, overlay_labels, 0.0f, 50.0f, ImVec2(600.0f, 200.0f));
}

void DisplayInformation::display_cpu_temperature() {
    if (ImGui::CollapsingHeader("CPU Information")) {
        ImGui::BeginTable("CPU Information", 2);
        ImGui::TableNextColumn();

        ImGui::Text("CPU Temperature");

        ImGui::TableNextColumn();

        ImGui::Text("%s C", SystemInformation::cpu_temperature().c_str());

        ImGui::EndTable();
    }
}

void DisplayInformation::display_gpu_temperature() {
    if (ImGui::CollapsingHeader("GPU Information")) {
        ImGui::BeginTable("GPU Information", 2);
        ImGui::TableNextColumn();

        ImGui::Text("GPU Temperature");

        ImGui::TableNextColumn();

        std::string gpu_temp_placeholder = "<placeholder>";
        ImGui::Text("%s", gpu_temp_placeholder.c_str());

        ImGui::EndTable();
    }
}

void DisplayInformation::display_uptime() {
    if (ImGui::CollapsingHeader("Uptime")) {
        ImGui::BeginTable("Uptime Table", 2);
        ImGui::TableNextColumn();

        ImGui::Text("Uptime");

        ImGui::TableNextColumn();

        SystemInformation::current_uptime_from_proc();
        ImGui::Text("%d hours %d minutes %d seconds", SystemInformation::uptime_hours(), SystemInformation::uptime_minutes(), SystemInformation::uptime_seconds());

        ImGui::EndTable();
    }
}

void DisplayInformation::display_memory_information() {
    std::vector<std::string> memory_information = SystemInformation::memory_information();

    if (ImGui::CollapsingHeader("Memory Information")) {
        ImGui::BeginTable("MemoryInformation", 2);
        ImGui::TableNextColumn();

        for (auto const& line: memory_information) {
            std::string memory_topic = "";
            std::string memory_data = "";
            bool string_selection_flag = false;

            for (int i = 0; i < line.length(); i++) {
                if (line[i] == ' ') {
                    string_selection_flag = true;
                    continue;
                }

                string_selection_flag ? memory_data.push_back(line[i]) : memory_topic.push_back(line[i]);
            }

            ImGui::Text(memory_topic.c_str());

            ImGui::TableNextColumn();

            ImGui::Text(memory_data.c_str());

            ImGui::TableNextRow();
            ImGui::TableNextColumn();
        }

        ImGui::EndTable();
    }
}