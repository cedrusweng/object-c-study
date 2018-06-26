//
//  Square.h
//  11-4
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
@interface Square : NSObject
{
    Rectangle *rect;
}
-(id) init;
-(void) setSide:(int)s;
-(int) side;
-(int) area;
-(int) perimeter;
@end
