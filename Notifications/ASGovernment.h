//
//  ASGovernment.h
//  Notifications
//
//  Created by Роман Приискалов on 29/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASGovernment : NSObject

extern NSString* const ASGovernmentTaxLevelDidChangeNotification;
extern NSString* const ASGovernmentSalaryDidChangeNotification;
extern NSString* const ASGovernmentPensionDidChangeNotification;
extern NSString* const ASGovernmentAveragePriceDidChangeNotification;

extern NSString* const ASGovernmentTaxLevelInfoKey;
extern NSString* const ASGovernmentSalaryInfoKey;
extern NSString* const ASGovernmentPensionInfoKey;
extern NSString* const ASGovernmentAverageInfoKey;

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic)  CGFloat salary;
@property (assign, nonatomic)  CGFloat pension;
@property (assign, nonatomic)  CGFloat averagePrice;

@end