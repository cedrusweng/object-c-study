//
//  Fraction.m
//  FractionTest2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator,denominator;
-(id) init{
    return [self initWith:0 over:0];
}
-(id) initWith:(int) n over:(int)d{
    self = [super init];
    if(self){
        [self setTo:n over:d];
    }
    return self;
}
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

-(void) add:(Fraction *) f{
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
    [self reduce];
}
-(Fraction *) add2:(Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
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


-(Fraction *) substract:(Fraction *) f{
    Fraction * result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}
-(Fraction *) multiply:(Fraction *) f{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *) divide:(Fraction *) f{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    [result reduce];
    return result;
}



@end
