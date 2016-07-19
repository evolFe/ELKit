//
//  UIButton+ELKit.h
//  TaiHao
//
//  Created by evol on 16/7/19.
//  Copyright © 2016年 evol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ELKit)

+ (UIButton *)                   el_button;

- (UIButton *(^)(NSString *))    el_title_normal;
- (UIButton *(^)(NSString *))    el_title_selected;

- (UIButton *(^)(CGFloat))       el_font;

- (UIButton *(^)(UIColor *))     el_titleColor_normal;
- (UIButton *(^)(UIColor *))     el_titleColor_selected;

- (UIButton *(^)(UIImage *))     el_image_normal;
- (UIButton *(^)(UIImage *))     el_image_selected;

- (UIButton *(^)(UIImage *))     el_backgroundImage_normal;
- (UIButton *(^)(UIImage *))     el_backgroundImage_selected;

- (UIButton *(^)(id ,SEL))       el_target_action;

@end
