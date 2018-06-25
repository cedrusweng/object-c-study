//
//  main.m
//  FactionTest2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "../Faction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Faction *aFraction = [[Faction alloc] init];
        Faction *bFraction = [[Faction alloc] init];
        
        [aFraction setTo:1 over:2];
        [bFraction setTo:1 over:4];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        [aFraction add:bFraction];
        [aFraction reduce];
        [aFraction print];
        
    }
    return 0;
}
