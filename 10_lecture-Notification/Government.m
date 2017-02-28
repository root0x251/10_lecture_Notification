//
//  Government.m
//  10_lecture-Notification
//
//  Created by Slava on 28.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "Government.h"

NSString *const GovernmentTaxLevelDidChangeNotification = @"GovernmentTaxLevelDidChangeNotification"; // изменился ли уровень налогов у класса государство
NSString *const GovernmentSalaryDidChangeNotification = @"GovernmentSalaryDidChangeNotification";   // изменилась ли зп у коласса государство
NSString *const GovernmantPensionDidiChangeNotification = @"GovernmantPensionDidiChangeNotification"; // изменилась ли пенсия у класса государство
NSString *const GovernmantAveragePriceDidChangeNotification = @"GovernmantAveragePriceDidChangeNotification"; //изменилась ли средняя цена

NSString *const GovernmentTaxLevelUserInfoKey = @"GovernmentTaxLevelUserInfoKey";
NSString *const GovernmentSalaryUserInfoKey = @"GovernmentSalaryUserInfoKey";
NSString *const GovernmantPensionUserInfoKey = @"GovernmantPensionUserInfoKey";
NSString *const GovernmantAveragePriceUserInfoKey = @"GovernmantAveragePriceUserInfoKey";

@implementation Government

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.taxLevel = 5.f;  // процентная ставка
        self.salary =  1000.f;    // зарплата
        self.pension = 500.f;   // пенсия
        self.averagePrice = 10.f; // средняя цена

    } 
    return self;
}

- (void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel]
                                                           forKey:GovernmentTaxLevelUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentTaxLevelDidChangeNotification
                                                        object:nil userInfo: dictionary];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary]
                                                           forKey:GovernmentSalaryUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmentSalaryDidChangeNotification
                                                        object:nil userInfo:dictionary];
}

- (void) setPension:(CGFloat)pension {
    _pension = pension;
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension]
                                                           forKey:GovernmantPensionUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmantPensionDidiChangeNotification
                                                        object:nil userInfo:dictionary];
}

- (void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice]
                                                           forKey:GovernmantAveragePriceUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovernmantAveragePriceDidChangeNotification
                                                        object:nil userInfo:dictionary];
}

@end
