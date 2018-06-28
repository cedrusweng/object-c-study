//
//  main.m
//  15-8
//
//  Created by cedrus on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"cedrus1";
        NSString *aEmail = @"wengxuesong@126.com";
        
        NSString *bName = @"cedrus2";
        NSString *bEmail = @"wengxuesong@126.com";
        
        NSString *cName = @"cedrus3";
        NSString *cEmail = @"wengxuesong@126.com";
        
        NSString *dName = @"cedrus4";
        NSString *dEmail = @"wengxuesong@126.com";
        
        AddressCard *card1=[[AddressCard alloc] init];
        AddressCard *card2=[[AddressCard alloc] init];
        AddressCard *card3=[[AddressCard alloc] init];
        AddressCard *card4=[[AddressCard alloc] init];
        
        AddressCard *myCard=[[AddressCard alloc] init];
        
        AddressBook *myBook =[[AddressBook alloc] initWithName:@"Cedrus's Address Book"];
        NSLog(@"Entries in address book after creation: %i",[myBook entries]);
        [card1 setName:aName andEmail:aEmail];
        [card2 setName:bName andEmail:bEmail];
        [card3 setName:cName andEmail:cEmail];
        [card4 setName:dName andEmail:dEmail];
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        NSLog(@"Entries in address book after creation: %i",[myBook entries]);
        [myBook list];
        
        
        NSLog(@"cedrus1");
        myCard = [myBook lookup:@"cedrus1"];
        
        if(myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found!");
        
        
        
        
        [myBook removeCard:myCard];
        [myBook list];
        
        [myBook sort];
        [myBook list];
    }
    return 0;
}
