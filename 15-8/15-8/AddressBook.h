//
//  AddressBook.h
//  15-8
//
//  Created by cedrus on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"


@interface AddressBook : NSObject
@property (nonatomic,copy) NSString *bookName;
@property (nonatomic,strong) NSMutableArray *book;

-(id) initWithName: (NSString *) name;
-(void) addCard:(AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;


-(AddressCard *) lookup: (NSString *) theName;

-(int) entries;
-(void) list;
-(void) sort;
@end
