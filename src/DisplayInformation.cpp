//
// Created by whuty on 3/17/22.
//
#include <DisplayInformation.h>
#include <SystemInformation.h>
#include <Formatting.h>
#include "imgui.h"

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

        SystemInformation::set_uptime();
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
            int first_whitespace_character = 0;
            bool string_selection_flag = false;

            for (int i = 0; i < line.length(); i++) {
                if (line[i] == ' ' && !string_selection_flag) {
                    string_selection_flag = true;
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