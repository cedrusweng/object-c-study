//
//  main.m
//  8-2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Rectangle *myRect = [[Rectangle alloc] init];
        [myRect setWidth:10 andHeight:3];
        [myRect draw];
    }
    return 0;
}
