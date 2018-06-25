//
//  Faction.m
//  FactionTest2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Faction.h"

@implementation Faction
@synthesize numerator,denominator;

-(void)print{
    NSLog(@"%i/%i",numerator,denominator);
}
-(void) setTo:(int)n over:(int)d{
    numerator = n;
    denominator = d;
}
-(double) convertToNum{
    if(denominator !=0) {
        return (double) numerator/denominator;
    }else {
        return NAN;
    }
}
@end
