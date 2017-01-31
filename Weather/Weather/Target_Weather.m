//
//  Target_Weather.m
//  Weather
//
//  Created by wangshiyu13 on 2017/1/31.
//  Copyright © 2017年 wangshiyu13. All rights reserved.
//

#import "Target_Weather.h"
#import "SXWeatherView.h"

@implementation Target_Weather
- (UIView *)Action_aView:(NSDictionary *)params {
    SXWeatherView *view = [SXWeatherView view];
    if (params) {
        void (^callback)() = params[@"callback"];
        view.callback = callback;
    }
    return view;
}
@end
