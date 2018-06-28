//
//  main.m
//  15-16
//
//  Created by cedrus on 2018/6/28.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define INTOBJ(v) [NSNumber numberWithInteger: v]

@interface NSSet (Printing)
-(void) print;
@end

@implementation NSSet (Printing)
-(void) print {
    printf("{");
    for(NSNumber *element in self)
        printf(" %li ",(long)[element integerValue]);
    printf("} \n");
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableSet *set1 = [NSMutableSet setWithObjects:INTOBJ(1),INTOBJ(3),INTOBJ(5),INTOBJ(10), nil];
        NSMutableSet *set2 = [NSMutableSet setWithObjects:INTOBJ(-51),INTOBJ(100),INTOBJ(3),INTOBJ(5), nil];
        NSMutableSet *set3 = [NSMutableSet setWithObjects:INTOBJ(12),INTOBJ(200),INTOBJ(3), nil];
        
        NSLog(@"set1:");
        [set1 print];
        
        NSLog(@"set2:");
        [set2 print];
        
        NSLog(@"set3:");
        [set3 print];
        
        if([set1 isEqualToSet:set2]==YES)
            NSLog(@"set1 equals set2");
        else
            NSLog(@"set1 is not equal to set2");
        
        if([set1 containsObject:INTOBJ(10)] == YES)
            NSLog(@"set1 contains 10");
        else
            NSLog(@"set1 does not contain 10");
        
        if([set2 containsObject:INTOBJ(10)] == YES)
            NSLog(@"set2 contains 10");
        else
            NSLog(@"set2 does not contain 10");
        
        
        [set1 addObject:INTOBJ(4)];
        [set1 removeObject:INTOBJ(10)];
        
        NSLog(@"set1 after adding 4 and removing 10:");
        [set1 print];
        
        
        [set1 intersectSet:set2];
        NSLog(@"set1 intersectSet set2:");
        [set1 print];
        
        [set1 unionSet:set3];
        NSLog(@"set1 union set3:");
        [set1 print];
    }
    return 0;
}
