//
//  MyCpp.hpp
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

#ifndef MyCpp_hpp
#define MyCpp_hpp

#include <string>
#include <iostream>

class MyCpp {
public:
    MyCpp();
    MyCpp(const std::string &text);
    ~MyCpp();

public:
    void sayHello();

    void setText(const std::string &text);
    const std::string &getText();
    
    void setNumber(const int number);
    int getNumber();

private:
    std::string m_text;
    int m_number;
};

#endif /* MyCpp_hpp */
