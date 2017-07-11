//
//  MyAlernLabel.m
//  SpaceStation
//
//  Created by TianTeng on 2017/7/11.
//  Copyright © 2017年 Tian. All rights reserved.
//

#import "MyAlernLabel.h"
#import "UIView+XMGExtension.h"
#define Main_Screen_Height [[UIScreen mainScreen] bounds].size.height
#define Main_Screen_Width [[UIScreen mainScreen] bounds].size.width

@implementation MyAlernLabel

-(instancetype)initWithFrame:(CGRect)frame WithMessage:(NSString *)message{

    if(self = [super initWithFrame:frame]){

        _messageLab = [[UILabel alloc]init];
        _messageLab.font = [UIFont systemFontOfSize:15];
        _messageLab.text = message;
        _messageLab.backgroundColor = [UIColor blackColor];
        _messageLab.alpha = 0.8;
        _messageLab.textColor = [UIColor whiteColor];
        _messageLab.numberOfLines = 1;
        _messageLab.lineBreakMode = NSLineBreakByTruncatingTail;
        CGSize maximumLabelSize = CGSizeMake(100, 1000);
        CGSize expectSize = [_messageLab sizeThatFits:maximumLabelSize];
        _messageLab.frame = CGRectMake(20, 70, expectSize.width, 50);
        _messageLab.centerX = Main_Screen_Width/2;
        _messageLab.centerY = Main_Screen_Height/2-20;
        _messageLab.layer.cornerRadius = 15;
        _messageLab.layer.masksToBounds = YES;
        //ViewRadius(_messageLab, 15);

        [self addSubview:_messageLab];

        //设置定时器
        _time = [NSTimer scheduledTimerWithTimeInterval:1.4 target:self selector:@selector(action) userInfo:nil repeats:YES];

    }

    return self;
}
-(void)action{
    [_messageLab removeFromSuperview];
    [self removeFromSuperview];
    [_time setFireDate:[NSDate distantFuture]]; //停止计时器
    [_time invalidate]; //取消计时器
    _time = nil;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
