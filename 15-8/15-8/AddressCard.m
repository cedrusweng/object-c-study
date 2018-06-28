//
//  AddressCard.m
//  15-8
//
//  Created by cedrus on 2018/6/27.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name = _name, email = _email;
-(void) setName:(NSString *) theName andEmail:(NSString *) theEmail{
    self.name = theName;
    self.email = theEmail;
}
-(void) print{
    NSLog(@"======================");
    NSLog(@"|                   |");
    NSLog(@"|  %-3s  |",[_name UTF8String]);
    NSLog(@"|  %-3s  |",[_email UTF8String]);
    NSLog(@"|                   |");
    NSLog(@"|                   |");
    NSLog(@"|                   |");
    NSLog(@"|  0           0    |");
    NSLog(@"======================");
}


-(BOOL) isEqual:(AddressCard *) theCard{
    return ([_name isEqualToString:theCard.name] && [_email isEqualToString:theCard.email]);
}

-(NSComparisonResult) compareNames:(id) element{
    return [_name compare:[element name]];
}
@end
