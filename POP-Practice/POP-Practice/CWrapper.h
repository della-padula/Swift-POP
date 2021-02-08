//
//  CWrapper.h
//  POP-Practice
//
//  Created by Denny on 2021/02/09.
//

#ifndef CWrapper_h
#define CWrapper_h

#import <Foundation/Foundation.h>

@interface CWrapper : NSObject
- (instancetype)initWithText:(NSString*)text;
- (void)helloWorld;

- (void)setText:(NSString*)text;
- (NSString*)getText;

- (void)setNumber:(int)number;
- (int)getNumber;
@end

#endif /* CWrapper_h */
