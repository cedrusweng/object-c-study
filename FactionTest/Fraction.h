//
//  Fraction.h
//  FactionTest
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
-(void) print;
-(void) setNumerator:(int)n;
-(void) setDenominator:(int)d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
@end
