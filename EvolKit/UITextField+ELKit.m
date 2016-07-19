//
//  UITextField+ELKit.m
//  TaiHao
//
//  Created by evol on 16/7/19.
//  Copyright © 2016年 evol. All rights reserved.
//

#import "UITextField+ELKit.h"

@implementation UITextField (ELKit)

+ (UITextField *)el_field;
{
    return [UITextField new];
}

- (UITextField *(^)(NSString *))el_text
{
    return ^UITextField *(NSString *text){
        self.text = text;
        return self;
    };
}
- (UITextField *(^)(NSString *))el_placeHolder
{
    return ^UITextField *(NSString *placeHolder){
        self.placeholder = placeHolder;
        return self;
    };
}

- (UITextField *(^)(CGFloat ))el_font
{
    return ^UITextField *(CGFloat font){
        self.font = [UIFont systemFontOfSize:font];
        return self;
    };

}
- (UITextField *(^)(UIColor * ))el_textColor
{
    return ^UITextField *(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UITextField *(^)(NSTextAlignment))el_textAlignment{
    return ^UITextField *(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}


@end
