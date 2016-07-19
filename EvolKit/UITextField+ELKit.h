//
//  UITextField+ELKit.h
//  TaiHao
//
//  Created by evol on 16/7/19.
//  Copyright © 2016年 evol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (ELKit)

+ (UITextField *)                       el_field;

- (UITextField *(^)(NSString *))        el_text;
- (UITextField *(^)(NSString *))        el_placeHolder;

- (UITextField *(^)(CGFloat ))          el_font;
- (UITextField *(^)(UIColor * ))        el_textColor;
- (UITextField *(^)(NSTextAlignment))   el_textAlignment;

@end
