//
//  Rectangle.m
//  11-4
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width,height;
-(void) setWidth:(int) w andHeight:(int) h{
    width = w;
    height = h;
}
-(int) area{
    return width * height;
}
-(int) perimeter{
    return (width + height) * 2;
}
@end
