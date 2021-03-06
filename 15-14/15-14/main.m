//
//  main.m
//  15-14
//
//  Created by cedrus on 2018/6/28.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        
        [glossary setObject:@"A class defined so other classes can inherit from it" forKey:@"abstract class"];
        [glossary setObject:@"To implement all the methods defined in a protocol" forKey:@"adopt"];
        [glossary setObject:@"Storing an object for later use" forKey:@"archiving"];
        
        NSLog(@"abstract class: %@",[glossary objectForKey:@"abstract class"]);
        NSLog(@"adopt: %@",[glossary objectForKey:@"adopt"]);
        NSLog(@"archiving: %@",[glossary objectForKey:@"archiving"]);
    }
    return 0;
}
