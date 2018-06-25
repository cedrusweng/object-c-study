//
//  Rectangle.m
//  8-2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
}
@synthesize width,height;

-(void) setOrigin:(XYPoint *)pt{
    origin = pt;
}
-(XYPoint *) origin {
    return origin;
}
-(void) setWidth:(int)w andHeight:(int)h {
    width = w;
    height = h;
}
-(int) area{
    return width * height;
}
-(int) perimeter {
    return 2 * (width + height);
}
@end
