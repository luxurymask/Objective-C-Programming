//
//  main.m
//  Test14
//
//  Created by LiuXiaoli on 2017/10/9.
//  Copyright © 2017年 LiuXiaoli. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = (NSHost *)[NSHost currentHost];
        NSString *name = (NSString *)[host localizedName];
        
        NSLog(@"%@", name);
    }
    return 0;
}
