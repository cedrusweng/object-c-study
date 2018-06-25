//
//  Faction.h
//  FactionTest2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Faction : NSObject
@property int numerator,denominator;
-(void) print:(BOOL) reduced;
-(void) setTo:(int) n over:(int)d;
-(double) convertToNum;
-(void) reduce;
-(Faction *) add2:(Faction *) f;
-(void) add:(Faction *) f;

-(Faction *) substract:(Faction *) f;
-(Faction *) multiply:(Faction *) f;
-(Faction *) divide:(Faction *) f;


@end