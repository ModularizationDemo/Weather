//
//  HLAPICenter+Weather.m
//  Weather
//
//  Created by wangshiyu13 on 2017/1/31.
//  Copyright © 2017年 wangshiyu13. All rights reserved.
//

#import "HLAPICenter+Weather.h"

@implementation HLAPICenter (Weather)

HLStrongSynthesize(weather, [HLAPIRequest request]
                   .setMethod(GET)
                   .setCustomURL(@"nc/weather/5YyX5LqsfOWMl%2BS6rA%3D%3D.html")
                   .setResponseClass(@"SXWeatherEntity")
                   .setObjReformerDelegate(self.defaultReformer))
@end
