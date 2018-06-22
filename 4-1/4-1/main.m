//
//  main.m
//  4-1
//
//  Created by 翁雪松 on 2018/6/22.
//  Copyright © 2018年 翁雪松. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int integerVar = 100;
        float floatVar = 22.222;
        double doubleVar = 8.44e+11;
        char charVar = 'w';
        
        
        NSLog(@"integerVar = %i",integerVar);
        NSLog(@"floatVar = %f",floatVar);
        NSLog(@"doubleVar = %e",doubleVar);
        NSLog(@"doubleVar = %g",doubleVar);
        NSLog(@"charVar = %c",charVar);
    }
    return 0;
}
