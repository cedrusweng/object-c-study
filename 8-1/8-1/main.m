//
//  main.m
//  8-1
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassA:NSObject
{
    int x;
}
-(void)initVar;
@end
@implementation ClassA
-(void)initVar{
    x = 100;
}
@end


@interface ClassB:ClassA
-(void) printVar;
@end
@implementation ClassB
-(void)printVar{
    NSLog(@"x=%i",x);
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB * b=[[ClassB alloc] init];
        [b initVar];
        [b printVar];
    }
    return 0;
}
