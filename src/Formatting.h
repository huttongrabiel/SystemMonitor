//
// Created by whuty on 3/16/22.
//

#ifndef SYSTEMMONITOR_FORMATTING_H
#define SYSTEMMONITOR_FORMATTING_H

typedef float Window_Width_Multiple;

class Formatting {
public:
    static void vertical_spacing(int);
    static void centered_imgui_text(std::string);
    static void insert_text_at(Window_Width_Multiple, std::string const&);
};

#endif //SYSTEMMONITOR_FORMATTING_H
