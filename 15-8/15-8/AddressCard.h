//
//  AddressCard.h
//  15-8
//
//  Created by cedrus on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
@property (copy, nonatomic) NSString *name,*email;
-(void) setName:(NSString *) theName andEmail:(NSString *) theEmail;
-(void) print;


-(BOOL) isEqual:(AddressCard *) theCard;
-(NSComparisonResult) compareNames:(id) element;
@end
