//
//  main.m
//  Test13
//
//  Created by liuxl on 2017/10/9.
//  Copyright © 2017年 liuxl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        NSString *s = @"";
        if([timeZone isDaylightSavingTime] != YES){
            s = @"不";
        }
        NSLog(@"您所在时区%@处于夏时制", s);
    }
    return 0;
}
