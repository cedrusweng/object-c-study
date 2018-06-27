//
//  main.m
//  15-1
//
//  Created by 翁雪松 on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber,*floatNumber,*intNumber;
        NSInteger myInt;
        intNumber = [NSNumber numberWithInteger:100];
        myInt =[intNumber integerValue];
        NSLog(@"%li",(long)myInt);
        
        myNumber = [NSNumber numberWithLong:0xabcdef];
        NSLog(@"%lx",[myNumber longValue]);
        
        myNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c",[myNumber charValue]);
        
        floatNumber = [NSNumber numberWithFloat:100.00];
        NSLog(@"%g",[floatNumber floatValue]);
        
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%lg",[myNumber doubleValue]);
        
        NSLog(@"%li",(long)[myNumber integerValue]);
        
        
        if([intNumber isEqualToNumber:floatNumber] == YES){
            NSLog(@"Numbers are equal");
        }else{
            NSLog(@"Numbers are not equal");
        }
    }
    return 0;
}
