//
//  Faction.h
//  FactionTest2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void) print:(BOOL) reduced;
-(void) setTo:(int) n over:(int)d;
-(double) convertToNum;
-(void) reduce;
-(Fraction *) add2:(Fraction *) f;
-(void) add:(Fraction *) f;

-(Fraction *) substract:(Fraction *) f;
-(Fraction *) multiply:(Fraction *) f;
-(Fraction *) divide:(Fraction *) f;


@end
