//
//  Target_Weather.m
//  Weather
//
//  Created by wangshiyu13 on 2017/1/31.
//  Copyright © 2017年 wangshiyu13. All rights reserved.
//

#import "Target_Weather.h"

@implementation Target_Weather
- (UIViewController *)Action_aViewController:(NSDictionary *)params {
    UIViewController *viewController = [UIStoryboard storyboardWithName:@"SXWeatherPage" bundle:nil].instantiateInitialViewController;
    return viewController;
}
@end
