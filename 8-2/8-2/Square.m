//
//  Square.m
//  8-2
//
//  Created by 翁雪松 on 2018/6/25.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Square.h"

@implementation Square
-(void) setSide:(int)s {
    [self setWidth:s andHeight:s];
}
-(int) side{
    return self.width;
}

@end
