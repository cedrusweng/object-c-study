//
//  main.m
//  5-4
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber;
        
        NSLog(@"What triangular number do you want?");
        scanf("%i", &number);
        
        triangularNumber = 0;
        for (n=1;n<=number;++n){
            triangularNumber += n;
        }
        NSLog(@"Triangular number %i is %i\n",number,triangularNumber);
    }
    return 0;
}
