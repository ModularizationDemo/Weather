//
//  PersentAnimator.h
//  HLPPShop
//
//  Created by wangshiyu13 on 2016/9/17.
//  Copyright © 2016年 wangshiyu13. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    UIPresentCrossDissolve = 0,
    UIPresentCoverVertical,
} UIPresentTransitionStyle;

@interface PersentAnimator : UIPercentDrivenInteractiveTransition<UIViewControllerAnimatedTransitioning,UIViewControllerTransitioningDelegate>

@property(assign, nonatomic)UIPresentTransitionStyle presentStyle;
// 动画时长
@property(nonatomic, assign)NSTimeInterval animatingDuration;

+ (PersentAnimator *)shared;

@end
