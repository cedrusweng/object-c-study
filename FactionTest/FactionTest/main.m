//
//  main.m
//  FactionTest
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "../Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        NSLog(@"The value of myFraction is:");
        [myFraction print];
    }
    return 0;
}
