//
//  main.m
//  5-6
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count = 1;
        while(count <= 5) {
            NSLog(@"%i",count);
            ++count;
        }
    }
    return 0;
}
