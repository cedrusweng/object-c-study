//
//  main.m
//  10-1
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a,*b;
        a=[[Fraction alloc] initWith:1 over:3];
        b=[[Fraction alloc] initWith:3 over:7];
        [a print:YES];
        [b print:YES];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
