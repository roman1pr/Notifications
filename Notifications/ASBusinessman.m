//
//  ASBusinessman.m
//  Notifications
//
//  Created by Роман Приискалов on 29/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASBusinessman.h"
#import "ASGovernment.h"

@implementation ASBusinessman

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter * ns = [NSNotificationCenter defaultCenter];
        [ns addObserver:self selector:@selector(SalaryChangeNotification:)
                   name:ASGovernmentSalaryDidChangeNotification
                 object:nil];
        [ns addObserver:self selector:@selector(AveragePriceChangeNotification:)
                   name:ASGovernmentAveragePriceDidChangeNotification
                 object:nil];
        
    }
    return self;
}

#pragma mark - Notifications

- (void) SalaryChangeNotification: (NSNotification *) notification
{
    
   
    NSNumber * value = [notification.userInfo objectForKey:ASGovernmentSalaryInfoKey];
    self.salary = [value floatValue];
    
    NSLog(@"New Salary for Businessman is %f ! ", self.salary);
     
}

- (void) AveragePriceChangeNotification: (NSNotification *) notification
{
    NSNumber * value = [notification.userInfo valueForKey:ASGovernmentAveragePriceDidChangeNotification];
    
    NSLog(@"New AveragePrice for Businessman is %f ! ", [value floatValue] );
}
@end