//
//  main.m
//  9-4
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Faction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Faction *f=[[Faction alloc] init];
        @try{
            [f noSuchMethod];
        }
        @catch(NSException *exception){
            NSLog(@"Caught %@%@",[exception name],[exception reason]);
        }
        NSLog(@"Execution continues!");
    }
    return 0;
}
