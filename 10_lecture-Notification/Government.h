//
//  Government.h
//  10_lecture-Notification
//
//  Created by Slava on 28.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>


extern NSString *const GovernmentTaxLevelDidChangeNotification; // изменился ли уровень налогов у класса государство
extern NSString *const GovernmentSalaryDidChangeNotification;   // изменилась ли зп у коласса государство
extern NSString *const GovernmantPensionDidiChangeNotification; // изменилась ли пенсия у класса государство
extern NSString *const GovernmantAveragePriceDidChangeNotification; //изменилась ли средняя цена

extern NSString *const GovernmentTaxLevelUserInfoKey;
extern NSString *const GovernmentSalaryUserInfoKey;
extern NSString *const GovernmantPensionUserInfoKey;
extern NSString *const GovernmantAveragePriceUserInfoKey;



@interface Government : NSObject

@property (assign, nonatomic) CGFloat taxLevel;  // процентная ставка
@property (assign, nonatomic) CGFloat salary;    // зарплата
@property (assign, nonatomic) CGFloat pension;   // пенсия
@property (assign, nonatomic) CGFloat averagePrice; // средняя цена 

@end
