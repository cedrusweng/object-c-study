//
//  AddressBook.m
//  15-8
//
//  Created by cedrus on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;
-(id) initWithName: (NSString *) name{
    self =[super init];
    if(self){
        bookName = [NSString stringWithString:name];
        book =[NSMutableArray array];
    }
    return self;
}
//覆写init方法
-(id) init{
    return [self initWithName:@"noName"];
}
-(void) addCard:(AddressCard *) theCard{
    [book addObject:theCard];
}
-(void) removeCard: (AddressCard *) theCard{
    [book removeObject:theCard];
}

-(AddressCard *) lookup: (NSString *) theName{
    for( AddressCard *nextCard in book){
        if([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame){
            return nextCard;
        }
    }
    return nil;
}

-(int) entries{
    return (int)[book count];
}
-(void) list{
    NSLog(@"=======Contents of: %@ =========",bookName);
    for (AddressCard *theCard in book)
        NSLog(@"%-20s   %-32s",[theCard.name UTF8String],[theCard.email UTF8String]);
    NSLog(@"================================");
}

-(void) sort{
    //[book sortUsingSelector:@selector(compareNames:)];
    [book sortUsingComparator:^(id obj1, id obj2){
        return [[obj1 name] compare:[obj2 name]];
    }];
}

@end
