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
        
        Faction *myFaction = [[Faction alloc] init];
        
        [myFaction setNumerator:1];
        [myFaction setDenominator:3];
        [myFaction print];
        
        [myFaction setTo:100 over:200];
        [myFaction print];
    }
    return 0;
}
