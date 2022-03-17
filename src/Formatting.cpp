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
