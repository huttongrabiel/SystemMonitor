//
// Created by whuty on 3/16/22.
//

#include <iostream>
#include <Formatting.h>
#include "imgui.h"

void Formatting::vertical_spacing(int size) {
    for (int i = 0; i < size; i++) {
        ImGui::Spacing();
    }
}

void Formatting::centered_imgui_text(std::string text) {
    auto const windowWidth = ImGui::GetWindowSize().x;
    auto const textWidth   = ImGui::CalcTextSize(text.c_str()).x;

    ImGui::SetCursorPosX((windowWidth - textWidth) * 0.5f);
    ImGui::Text("%s", text.c_str());
}

void Formatting::insert_text_at(Window_Width_Multiple multiple, std::string const& text) {
    auto const window_width = ImGui::GetWindowSize().x;
    auto const text_width = ImGui::CalcTextSize(text.c_str()).x;

    ImGui::SetCursorPosX((window_width * multiple) - (text_width / 2));
    ImGui::Text("%s", text.c_str());
}