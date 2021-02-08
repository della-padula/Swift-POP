//
//  CWrapper.m
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

#import <Foundation/Foundation.h>
#import "CWrapper.h"
#include "MyCpp.hpp"

@interface CWrapper()
@property MyCpp *cppItem;
@end
@implementation CWrapper
- (instancetype)init
{
    self = [super init];
    self.cppItem = new MyCpp();
    return self;
}
- (instancetype)initWithText:(NSString*)text
{
    self = [super init];
    self.cppItem = new MyCpp(std::string([text cStringUsingEncoding:NSUTF8StringEncoding]));
    
    return self;
}

- (void)helloWorld
{
    printf("Hello world");
}

- (void)setText:(NSString *)text
{
    self.cppItem->setText(std::string([text cStringUsingEncoding:NSUTF8StringEncoding]));
}

- (NSString *)getText
{
    return [NSString stringWithUTF8String:self.cppItem->getText().c_str()];
}

- (void)setNumber:(int)number
{
    self.cppItem->setNumber(number);
}

- (int)getNumber
{
    return self.cppItem->getNumber();
}
@end
