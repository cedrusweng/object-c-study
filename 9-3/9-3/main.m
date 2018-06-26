//
//  main.m
//  9-3
//
//  Created by 翁雪松 on 2018/6/26.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        //isMemberOfClass 是不是一个类的实例
        if([mySquare isMemberOfClass:[Square class]] == YES){
            NSLog(@"mySquare is a member of Square class.");
        }
        
        if([mySquare isMemberOfClass:[Rectangle class]] == YES){
            NSLog(@"mySquare is a member of Rectangle class");
        }
        
        if([mySquare isMemberOfClass:[NSObject class]] == YES){
            NSLog(@"mySquare is a member of NSObject class");
        }
        
        //isKindOfClass 是不是类或子类的实例，继承也承认
        if([mySquare isKindOfClass:[Square class]] == YES){
            NSLog(@"mySquare is a kind of Square class.");
        }
        
        if([mySquare isKindOfClass:[Rectangle class]] == YES){
            NSLog(@"mySquare is a kind of Rectangle class");
        }
        
        if([mySquare isKindOfClass:[NSObject class]] == YES){
            NSLog(@"mySquare is a kind of NSObject class");
        }
        
        //respondsToSelector
        if([mySquare respondsToSelector:@selector(setSide:)] == YES){
            NSLog(@"mySquare responds to setSide: method");
        }
        if([mySquare respondsToSelector:@selector(setWidth:andHeight:)] == YES){
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        }
        if([Square respondsToSelector:@selector(alloc)] == YES){
            NSLog(@"Square class responds to alloc method");
        }
        
        
        //instancesRespondToSelector
        if([Rectangle instancesRespondToSelector:@selector(setSide:)] == YES){
            NSLog(@"Instances of Rectangle respond to setSide: method");
        }
        if([Square instancesRespondToSelector:@selector(setSide:)] == YES){
            NSLog(@"Instances of Square respond to setSide: method");
        }
        if([Square isSubclassOfClass:[Rectangle class]] == YES){
            NSLog(@"Square is a subclass of a rectangle");
        }
    }
    return 0;
}
