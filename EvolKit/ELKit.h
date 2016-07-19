//
//  ELKit.h
//  TestLian
//
//  Created by evol on 16/7/14.
//  Copyright © 2016年 evol. All rights reserved.
//

#ifndef ELKit_h
#define ELKit_h

/**
 *  加上强制类型转换是因为 label调用view的属性时返回的是view （例如 el_superView,还有layer的各种属性）
    所以子视图初始化时 务必先调用子视图自己的属性 最后调用父视图的 不然会报警告 但不影响编译
 */
#define ELView      UIView.el_view

#define ELLabel     (UILabel*)UILabel.el_label
#define ELButton    (UIButton*)UIButton.el_button
#define ELTextField (UITextField*)UITextField.el_field
#define ELImageView (UIImageView*)UIImageView.el_imageView

#define ELImage(__name__) [UIImage imageNamed:__name__]


#import "UILabel+ELKit.h"
#import "UIButton+ELKit.h"
#import "UIView+ELKit.h"
#import "UITextField+ELKit.h"
#import "UIImageView+ELKit.h"


#endif /* ELKit_h */
