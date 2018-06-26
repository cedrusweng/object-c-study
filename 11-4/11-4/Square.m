//
//  Square.m
//  11-4
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "Square.h"

@implementation Square
-(id) init{
    self = [super init];
    if(self){
        rect = [[Rectangle alloc] init];
    }
    return self;
}
-(void) setSide:(int)s{
    [rect setWidth:s andHeight:s];
}
-(int) side{
    return rect.width;
}
-(int) area{
    return [rect area];
}
-(int) perimeter{
    return [rect perimeter];
}
@end
