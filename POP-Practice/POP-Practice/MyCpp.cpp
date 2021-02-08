//
//  MyCpp.cpp
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

#include "MyCpp.hpp"

MyCpp::MyCpp():m_text() {}
MyCpp::MyCpp(const std::string &text): m_text(text) {}
MyCpp::~MyCpp() {}

void MyCpp::sayHello()
{
    std::cout << "Hello world!" << std::endl;
    
}

void MyCpp::setText(const std::string &text)
{
    m_text = text;
}
const std::string &MyCpp::getText()
{
    return m_text;
}

void MyCpp::setNumber(const int number)
{
    m_number = number;
}

int MyCpp::getNumber()
{
    return m_number;
}
