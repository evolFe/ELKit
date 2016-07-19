//
//  UIView+ELKit.m
//  TaiHao
//
//  Created by evol on 16/7/19.
//  Copyright © 2016年 evol. All rights reserved.
//

#import "UIView+ELKit.h"

@implementation UIView (ELKit)
+ (UIView *)el_view
{
    return [UIView new];
}
- (UIView *(^)(UIView *))el_superView
{
    return ^UIView *(UIView *superView){
        [superView addSubview:self];
        return self;
    };
}
- (UIView *(^)(BOOL))el_hidden
{
    return ^UIView *(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}

- (UIView *(^)(UIColor *))  el_backgroundColor{
    return ^UIView *(UIColor *backgroundColor){
        self.backgroundColor = backgroundColor;
        return self;
    };
    
}


- (UIView *(^)(CGFloat))el_cornerRadius
{
    return ^UIView *(CGFloat cornerRadius){
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


- (UIView *(^)(BOOL))el_masksToBounds
{
    return ^UIView *(BOOL masksToBounds){
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}

- (UIView *(^)(UIColor *))el_borderColor
{
    return ^UIView *(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
    
}
- (UIView *(^)(CGFloat))el_borderWidth
{
    return ^UIView *(CGFloat borderWidth){
        self.layer.borderWidth = borderWidth;
        return self;
    };
}


@end
