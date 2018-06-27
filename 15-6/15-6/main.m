//
//  main.m
//  15-6
//
//  Created by cedrus on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int i;
    @autoreleasepool {
        
        NSArray *monthNames =[NSArray arrayWithObjects:@"January",@"February",@"March",@"April",@"May",@"June",@"July",@"August",@"September",@"October",@"November",@"December", nil];
        
        NSLog(@"Month Name");
        NSLog(@"===== ====");
        for(i=0;i<12;++i) {
            NSLog(@" %2i  %@",i+1,[monthNames objectAtIndex:i]);
        }
        
    }
    return 0;
}
