//
//  main.m
//  15-8
//
//  Created by cedrus on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"cedrus";
        NSString *aEmail = @"wengxuesong@126.com";
        AddressCard *card1=[[AddressCard alloc] init];
        
        AddressCard *card2=[[AddressCard alloc] init];
        
        [card2 setName:aName andEmail:aEmail];
        [card2 print];
        [card1 setName:aName];
        [card1 setEmail:aEmail];
        [card1 print];
    }
    return 0;
}
