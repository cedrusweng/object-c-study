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
    pt.x =0;
    pt.y=0;
    result.origin =pt;
    if((rt.origin.x+rt.width >= origin.x && rt.origin.x<= origin.x+width) &&
       (rt.origin.y+rt.height>=origin.y && rt.origin.y<= origin.y+height)){
        if(rt.origin.x<=origin.x){
            result.origin.x = origin.x;
        }else {
            result.origin.x=rt.origin.x;
        }
        if(rt.origin.y <= origin.y){
            result.origin.y= origin.y;
        }else {
            result.origin.y=rt.origin.y;
        }
        
        if(rt.origin.x+rt.width <= origin.x +width){
            result.width = rt.origin.x+rt.width-result.origin.x;
        }else{
            result.width = origin.x+width -result.origin.x;
        }
        if(rt.origin.y+rt.height <= origin.y+height){
            result.height = rt.origin.y+rt.height -result.origin.y;
        }else {
            result.height = origin.y+height -result.origin.y;
        }
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
