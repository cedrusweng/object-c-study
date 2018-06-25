//
//  main.m
//  5-2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        triangularNumber = 0;
        
        for ( n = 1; n <= 200;n = n + 1) {
            triangularNumber += n;
        }
        
        // insert code here...
        NSLog(@"The 200th triangular number is %i", triangularNumber);
    }
    return 0;
}
