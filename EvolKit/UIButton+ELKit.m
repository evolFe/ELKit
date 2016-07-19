//
//  UIButton+ELKit.m
//  TaiHao
//
//  Created by evol on 16/7/19.
//  Copyright © 2016年 evol. All rights reserved.
//

#import "UIButton+ELKit.h"

@implementation UIButton (ELKit)

+ (UIButton *)el_button{
    UIButton *buttton = [UIButton buttonWithType:UIButtonTypeCustom];
    return buttton;
}



- (UIButton *(^)(NSString *))el_title_normal
{
    return ^UIButton *(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(NSString *))el_title_selected
{
    return ^UIButton *(NSString *title){
        [self setTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(CGFloat))el_font
{
    return ^UIButton *(CGFloat font){
        self.titleLabel.font = [UIFont systemFontOfSize:font];
        return self;
    };
}
- (UIButton *(^)(UIColor *))el_titleColor_normal
{
    return ^UIButton *(UIColor *color){
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };

}
- (UIButton *(^)(UIColor *))el_titleColor_selected
{
    return ^UIButton *(UIColor *color){
        [self setTitleColor:color forState:UIControlStateSelected];
        return self;
    };
}


- (UIButton *(^)(UIImage *))el_image_normal
{
    return ^UIButton *(UIImage *image){
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(UIImage *))el_image_selected
{
    return ^UIButton *(UIImage *image){
        [self setImage:image forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(UIImage *))el_backgroundImage_normal
{
    return ^UIButton *(UIImage *backgroundImage){
        [self setBackgroundImage:backgroundImage forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(UIImage *))el_backgroundImage_selected
{
    return ^UIButton *(UIImage *backgroundImage){
        [self setBackgroundImage:backgroundImage forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(id ,SEL))el_target_action
{
    return ^UIButton *(id target, SEL action){
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        return self;
    };
}




@end
