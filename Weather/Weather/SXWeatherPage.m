//
//  SXWeatherPage.m
//  Weather
//
//  Created by wangshiyu13 on 2017/1/31.
//  Copyright © 2017年 wangshiyu13. All rights reserved.
//

#import "SXWeatherPage.h"
#import "SXWeatherView.h"
#import "SXWeatherEntity.h"
#import "SXWeatherDetailPage.h"
#import "HLAPICenter+Weather.h"
#import "PersentAnimator.h"

@interface SXWeatherPage ()
@property (strong, nonatomic) IBOutlet SXWeatherView *weatherView;
@property (nonatomic, strong) SXWeatherEntity *weatherModel;
@end

@implementation SXWeatherPage
- (IBAction)detailClick {
    SXWeatherDetailPage *wdvc = [[SXWeatherDetailPage alloc]init];
    wdvc.weatherModel = self.weatherModel;
    PersentAnimator *effect = [PersentAnimator shared];
    effect.presentStyle = UIPresentCoverVertical;
    wdvc.transitioningDelegate = effect;
    [self presentViewController:wdvc animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self sendWeatherRequest];
}

- (void)sendWeatherRequest {
    [[HLAPICenter weather]
     .success(^(SXWeatherEntity *weatherEntity){
        self.weatherModel = weatherEntity;
        [self.weatherView setWeatherModel:self.weatherModel];
    })
     .failure(^(NSError *error){
        NSLog(@"网络请求失败");
    })
     start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
