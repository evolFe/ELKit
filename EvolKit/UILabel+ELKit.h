//
//  UILabel+ELKit.h
//  TestLian
//
//  Created by evol on 16/7/14.
//  Copyright © 2016年 evol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ELKit)

+ (UILabel *)label:(void(^)(UILabel *make))lableMaker;
+ (UILabel *)                   el_label;

- (UILabel *(^)(NSString *))    el_text;
- (UILabel *(^)(CGFloat))       el_font;
- (UILabel *(^)(CGFloat))       el_font_bold;
- (UILabel *(^)(UIColor *))     el_textColor;


@end
