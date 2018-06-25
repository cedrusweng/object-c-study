//
//  main.m
//  5-7
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u,v,temp;
        
        NSLog(@"Please type in two nonnegative integers.");
        scanf("%u%u",&u,&v);
        
        while (v!=0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        // insert code here...
        NSLog(@"Their greater common divisor is %u",u);
    }
    return 0;
}
