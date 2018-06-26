//
//  main.m
//  10-4
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Fraction+MathOps.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a=[[Fraction alloc] init];
        Fraction *b=[[Fraction alloc] init];
        Fraction *result;
        [a setTo:1 over:3];
        [b setTo:2 over:5];
        [a print];
        NSLog(@"   +");
        [b print];
        NSLog(@"-------");
        result = [a add: b];
        [result print];
    }
    return 0;
}
