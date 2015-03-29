//
//  ASGovernment.m
//  Notifications
//
//  Created by Роман Приискалов on 29/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASGovernment.h"
#import <UIKit/UIKit.h>

NSString* const ASGovernmentTaxLevelDidChangeNotification = @"ASGovernmentTaxLevelDidChange";
NSString* const ASGovernmentSalaryDidChangeNotification = @"ASGovernmentSalaryDidChange";
NSString* const ASGovernmentPensionDidChangeNotification = @"ASGovernmentPensionDidChange";
NSString* const ASGovernmentAveragePriceDidChangeNotification = @"ASGovernmentAveragePriceDidChange";

NSString* const ASGovernmentTaxLevelInfoKey = @"ASGovernmentTaxLevelInfoKey";
NSString* const ASGovernmentSalaryInfoKey = @"ASGovernmentSalaryInfoKey";
NSString* const ASGovernmentPensionInfoKey = @"ASGovernmentPensionInfoKey";
NSString* const ASGovernmentAverageInfoKey = @"ASGovernmentAverageInfoKey";

@implementation ASGovernment

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.taxLevel = 10;
        self.salary = 1000;
        self.pension = 200;
        self.averagePrice = 50; 
    }
    return self;
}



- (void) setTaxLevel: (CGFloat) taxLevel {
    _taxLevel = taxLevel;
    NSDictionary * dic = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel]
                                                     forKey:ASGovernmentTaxLevelInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dic];
    
}
- (void) setSalary:(CGFloat)salary{
    _salary = salary;
    NSDictionary * Dic = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary]
                                                     forKey:ASGovernmentSalaryInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:Dic];
}

-(void) setPension:(CGFloat)pension{
    _pension = pension;
    NSDictionary* dic = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:ASGovernmentPensionInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dic];
}

-(void) setAveragePrice:(CGFloat)averagePrice{
    _averagePrice = averagePrice;
    
    NSDictionary* dic = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:ASGovernmentAverageInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentAveragePriceDidChangeNotification
                                                        object:nil
                                                       userInfo:dic];
}

@end