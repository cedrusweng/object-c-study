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
-(void) print;
-(void) setTo:(int) n over:(int)d;
-(double) convertToNum;
-(void) reduce;
-(void) add:(Faction *) f;
@end
