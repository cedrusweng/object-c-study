//
//  Fraction.m
//  10-4
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator,denominator;
-(void)print{
    NSLog(@"%i/%i",numerator,denominator);
}
-(void) setTo:(int)n over:(int)d{
    numerator = n;
    denominator = d;
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

@end
