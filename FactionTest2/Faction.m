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

-(void)print:(BOOL) reduced{
    if (reduced){
        [self reduce];
    }
    NSLog(@"%i/%i",numerator,denominator);
}
-(void) setTo:(int)n over:(int)d{
    numerator = n;
    denominator = d;
}

-(void) add:(Faction *) f{
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
    [self reduce];
}
-(Faction *) add2:(Faction *) f {
    Faction *result = [[Faction alloc] init];
    result.numerator = numerator*f.denominator+ denominator *f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(void)reduce{
    int u=numerator;
    int v=denominator;
    int temp;
    while(v!=0){
        temp =u %v;
        u =v;
        v=temp;
    }
    
    numerator /= u;
    denominator /= u;
}
-(double) convertToNum{
    if(denominator !=0) {
        return (double) numerator/denominator;
    }else {
        return NAN;
    }
}


-(Faction *) substract:(Faction *) f{
    Faction * result = [[Faction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}
-(Faction *) multiply:(Faction *) f{
    Faction *result = [[Faction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(Faction *) divide:(Faction *) f{
    Faction *result = [[Faction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    return result;
}



@end
