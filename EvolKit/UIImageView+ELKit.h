//
//  UIImageView+ELKit.h
//  TaiHao
//
//  Created by evol on 16/7/19.
//  Copyright © 2016年 evol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (ELKit)

+ (UIImageView *)                            el_imageView;

- (UIImageView *(^)(UIImage *))              el_image;
- (UIImageView *(^)(NSString *))             el_imageUrlString;
- (UIImageView *(^)(NSString *,UIImage *))   el_imageUrlString_placeHolderImage;

@end
