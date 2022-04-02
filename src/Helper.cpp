//
// Created by whuty on 3/13/22.
//

#include <iostream>
#include <Helper.h>
#include "imgui.h"

std::string Helper::int_to_string(int num) {

    std::string reverse_retval = "";
    while (num > 0) {
        reverse_retval += (num % 10) + '0';
        num /= 10;
    }

    std::string retval = "";
    for (int i = reverse_retval.length()-1; i >= 0; i--) {
        retval += reverse_retval[i];
    }

    return retval;
}

int Helper::string_to_int(std::string str) {
    unsigned long long retval = 0;

    long long multiplier = 1;
    for (int i = str.length()-1; i >= 0; i--) {
        retval += multiplier * (str[i] - '0');
        multiplier *= 10;
    }

    return retval;
}

void Helper::centered_imgui_text(std::string text) {
    auto windowWidth = ImGui::GetWindowSize().x;
    auto textWidth   = ImGui::CalcTextSize(text.c_str()).x;

    ImGui::SetCursorPosX((windowWidth - textWidth) * 0.5f);
    ImGui::Text(text.c_str());
}