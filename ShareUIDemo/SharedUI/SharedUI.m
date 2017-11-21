//
//  SharedUI.m
//  ShareUIDemo
//
//  Created by swit on 2017/11/21.
//  Copyright © 2017年 swit. All rights reserved.
//

#import "SharedUI.h"

@implementation SharedUI

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 20)];
        lab.text = @"SHARE";
        lab.font = [UIFont systemFontOfSize:14];
        lab.textColor = [UIColor blueColor];
        lab.textAlignment = NSTextAlignmentCenter;
        [self addSubview:lab];
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)showInView:(UIView *)view
{
    for (UIView *v in view.subviews) {
        if ([v isKindOfClass:[self class]]) {
            [v removeFromSuperview];
        }
    }
    [view addSubview:self];
}
@end
