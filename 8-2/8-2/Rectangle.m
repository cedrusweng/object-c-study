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
    if(!origin){
        origin = [[XYPoint alloc] init];
    }
    origin.x = pt.x;
    origin.y = pt.y;
}
-(XYPoint *) origin {
    XYPoint * pt=[[XYPoint alloc] init];//这里有性能开销，注意外层引用的注销。
    pt.x=origin.x;
    pt.y=origin.y;
    return pt;
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
-(void) translate:(XYPoint *) pt{
    origin.x += pt.x;
    origin.y += pt.y;
}
-(BOOL)containsPoint:(XYPoint *)aPoint{
    if(aPoint.x < origin.x || aPoint.y < origin.y || aPoint.x > origin.x+width || aPoint.y>origin.y+height){
        return NO;
    }
    return YES;
}

-(Rectangle *) intersect:(Rectangle *)rt{
    Rectangle * result = [[Rectangle alloc] init];
    XYPoint *pt=[[XYPoint alloc] init];
    if(origin.x + width < rt.origin.x || origin.y < rt.origin.y - rt.height){
        [pt setX:0 andY:0];
        [result setWidth:0 andHeight:0];
        result.origin = pt;
    }else{
        [pt setX:origin.x-rt.origin.x andY:origin.y-rt.origin.y];
    }
    return result;
}
-(void) draw{
    int n,m;
    for(n=0;n<width;n++){
        printf("-");
    }
    printf("\n");
    for(n=0;n<height;n++){
        printf("|");
        for(m=0;m<width;m++){
            printf(" ");
        }
        printf("|\n");
    }
    for(n=0;n<width;n++){
        printf("-");
    }
}
@end
