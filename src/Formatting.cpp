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
    auto windowWidth = ImGui::GetWindowSize().x;
    auto textWidth   = ImGui::CalcTextSize(text.c_str()).x;

    ImGui::SetCursorPosX((windowWidth - textWidth) * 0.5f);
    ImGui::Text(text.c_str());
}
