//
//  Doctor.m
//  10_lecture-Notification
//
//  Created by Slava on 28.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "Doctor.h"
#import "Government.h"

@implementation Doctor

#pragma mark - Initialization
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter *notCenter = [NSNotificationCenter defaultCenter];
        [notCenter addObserver:self
                      selector:@selector(salartChengetNotification:)  // не забывать :
                          name:GovernmentSalaryDidChangeNotification
                        object:nil];
        
//        [notCenter addObserver:self
//                      selector:@selector(avaragePriceChangetNotification)
//                          name:GovernmantAveragePriceDidChangeNotification
//                        object:nil];
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self]; // отписываемся от всех нортификаций
}

#pragma mark - Notification

- (void) salartChengetNotification: (NSNotification *) notification {
    NSNumber *value = [notification.userInfo objectForKey:GovernmentSalaryUserInfoKey];
    CGFloat salary = [value floatValue];
    
    if (salary < self.salary) {
        NSLog(@"Doctor are not happy");
    } else {
        NSLog(@"Doctor are happy");
    }
    
    self.salary = salary;
}

//- (void) avaragePriceChangetNotification: (NSNotification *) notification {
////    доделать 
//}

@end
