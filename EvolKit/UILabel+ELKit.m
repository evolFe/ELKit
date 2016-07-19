
//
//  UILabel+ELKit.m
//  TestLian
//
//  Created by evol on 16/7/14.
//  Copyright © 2016年 evol. All rights reserved.
//

#import "UILabel+ELKit.h"

@implementation UILabel (ELKit)

+ (UILabel *)label:(void(^)(UILabel *make))lableMaker{
    UILabel *newLabel = [UILabel new];
    lableMaker(newLabel);
    return newLabel;
}

+ (UILabel *)el_label {
    return [UILabel new];
}

- (UILabel *(^)(NSString *))el_text
{
    return ^UILabel *(NSString *title){
        self.text = title;
        return self;
    };
}

- (UILabel *(^)(CGFloat))el_font
{
    return ^UILabel *(CGFloat font){
        self.font = [UIFont systemFontOfSize:font];
        return self;
    };
}

- (UILabel *(^)(CGFloat))el_font_bold
{
    return ^UILabel *(CGFloat font){
        self.font = [UIFont boldSystemFontOfSize:font];
        return self;
    };
}

- (UILabel *(^)(UIColor *))el_textColor{
    return ^UILabel *(UIColor *color){
        self.textColor = color;
        return self;
    };
}


@end
