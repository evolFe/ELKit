//
//  UIImageView+ELKit.m
//  TaiHao
//
//  Created by evol on 16/7/19.
//  Copyright © 2016年 evol. All rights reserved.
//

#import "UIImageView+ELKit.h"
#import "UIImageView+WebCache.h"

@implementation UIImageView (ELKit)

+ (UIImageView *)el_imageView
{
    return [UIImageView new];
}

- (UIImageView *(^)(UIImage *))el_image
{
    return ^UIImageView *(UIImage *image){
        self.image = image;
        return self;
    };
}
- (UIImageView *(^)(NSString *))el_imageUrlString{
    return ^UIImageView *(NSString *imageUrlString){
        [self sd_setImageWithURL:[NSURL URLWithString:imageUrlString]];
        return self;
    };
}
- (UIImageView *(^)(NSString *,UIImage *))el_imageUrlString_placeHolderImage
{
    return ^UIImageView *(NSString *imageUrlString,UIImage *placeHolderImage){
        [self sd_setImageWithURL:[NSURL URLWithString:imageUrlString]placeholderImage:placeHolderImage];
        return self;
    };
}

@end
