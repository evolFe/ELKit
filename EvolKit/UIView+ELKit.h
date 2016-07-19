//
//  UIView+ELKit.h
//  TaiHao
//
//  Created by evol on 16/7/19.
//  Copyright © 2016年 evol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ELKit)

+ (UIView *)                el_view;

- (UIView *(^)(UIView *))   el_superView;
- (UIView *(^)(BOOL))       el_hidden;

- (UIView *(^)(UIColor *))  el_backgroundColor;


- (UIView *(^)(CGFloat))    el_cornerRadius;
- (UIView *(^)(BOOL))       el_masksToBounds;

- (UIView *(^)(UIColor *))  el_borderColor;
- (UIView *(^)(CGFloat))    el_borderWidth;

@end
