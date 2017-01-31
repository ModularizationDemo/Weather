//
//  SXWeatherView.h
//  SXNews
//
//  Created by dongshangxian on 15/8/1.
//  Copyright (c) 2015年 ShangxianDante. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SXWeatherEntity;
@interface SXWeatherView : UIView
+ (instancetype)view;
- (void)addAnimate;

- (void)setWeatherModel:(SXWeatherEntity *)weatherModel;
@end
