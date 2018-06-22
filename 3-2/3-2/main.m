//
//  main.m
//  3-2
//
//  Created by 翁雪松 on 2018/6/22.
//  Copyright © 2018年 翁雪松. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction:NSObject
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end


@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d
{
    denominator = d;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction;
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        // insert code here...
        NSLog(@"The value of myFraction is:");
        [myFraction print];
    }
    return 0;
}
