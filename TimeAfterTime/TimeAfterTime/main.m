//
//  main.m
//  TimeAfterTime
//
//  Created by LiuXiaoli on 2017/10/8.
//  Copyright © 2017年 LiuXiaoli. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"The new date lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100000 seconds it will be %@", later);
        
        printf("---------------------------------------\n");
        
        int year, month, day, hour, minute, second;
        printf("please input your birth: \n");
        scanf("%i, %i, %i, %i, %i, %i", &year, &month, &day, &hour, &minute, &second);
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear: year];
        [comps setMonth: month];
        [comps setDay: day];
        [comps setHour: hour];
        [comps setMinute: minute];
        [comps setSecond: second];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier: NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];

        double d = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"%f seconds have past since your birth", d);
    }
    return 0;
}
