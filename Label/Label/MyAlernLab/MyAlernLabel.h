//
//  MyAlernLabel.h
//  SpaceStation
//
//  Created by TianTeng on 2017/7/11.
//  Copyright © 2017年 Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyAlernLabel : UIView

@property (nonatomic, strong) UILabel * messageLab;
@property (nonatomic, strong) NSTimer * time;

-(instancetype)initWithFrame:(CGRect)frame WithMessage:(NSString *)message;

@end
