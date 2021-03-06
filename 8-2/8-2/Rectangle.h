//
//  Rectangle.h
//  8-2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "GraphicObject.h"
@class XYPoint;
@interface Rectangle : GraphicObject
@property int width,height;
-(XYPoint *) origin;
-(void) setOrigin:(XYPoint *) pt;
-(void) setWidth:(int) w andHeight:(int) h;
-(int) area;
-(int) perimeter;
-(void) translate:(XYPoint *) pt;
-(BOOL) containsPoint:(XYPoint *) aPoint;
-(Rectangle *) intersect:(Rectangle *) rt;
-(void) draw;
@end
