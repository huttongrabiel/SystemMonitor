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
