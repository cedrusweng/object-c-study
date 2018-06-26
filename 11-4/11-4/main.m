//
//  main.m
//  11-4
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Square *s=[[Square alloc] init];
        [s setSide:10];
        NSLog(@"side %i,area %i, perimeter %i",s.side,[s area],[s perimeter]);
    }
    return 0;
}
