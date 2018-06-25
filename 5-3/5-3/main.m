//
//  main.m
//  5-3
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@"n Sum from 1 to n");
        NSLog(@"---------------------------");
        
        triangularNumber = 0;
        for (n=1;n<=10;n++){
            triangularNumber += n;
            NSLog(@"%i      %i",n,triangularNumber);
        }
    }
    return 0;
}
