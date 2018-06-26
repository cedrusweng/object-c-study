//
//  Rectangle.h
//  11-4
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
@property int width,height;
-(void) setWidth:(int) w andHeight:(int) h;
-(int) area;
-(int) perimeter;
@end
