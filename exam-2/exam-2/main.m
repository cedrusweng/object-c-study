//
//  main.m
//  exam-2
//
//  Created by 翁雪松 on 2018/6/22.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Rectangle:NSObject
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end


@implementation Rectangle
{
    int width;
    int height;
    int area;
    int perimeter;
}

-(void) setWidth: (int) w
{
    width = w;
}
-(void) setHeight: (int) h
{
    height = h;
}
-(int) width
{
    return width;
}
-(int) height
{
    return height;
}
-(int) area
{
    return width * height;
}
-(int) perimeter
{
    return (width + height) * 2;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
