//
//  main.m
//  15-4
//
//  Created by 翁雪松 on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSRange subRange;
        
        res = [str1 substringToIndex:3];
        NSLog(@"First 3 chars of str1: %@",res);
        
        res = [str1 substringFromIndex:5];
        NSLog(@"Chars from index 5 of str1: %@",res);
        
        
        res = [[str1 substringFromIndex:8] substringToIndex:6];
        NSLog(@"Chars from index 8 through 13: %@",res);
        
        subRange = [str1 rangeOfString:@"string A"];
        
        NSLog(@"String is at index %lu, length is %lu",subRange.location,subRange.length);
        
        subRange = [str1 rangeOfString: @"string B"];
        if(subRange.location == NSNotFound)
            NSLog(@"String not found");
        else
            NSLog(@"String is at index %lu, length is %lu",subRange.location,subRange.length);
    }
    return 0;
}
