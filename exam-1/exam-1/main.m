//
//  main.m
//  exam-1
//
//  Created by 翁雪松 on 2018/6/22.
//  Copyright © 2018年 翁雪松. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex:NSObject
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;
@end

@implementation Complex
{
    double real;
    double imaginary;
}


-(void) setReal: (double) a{
    real=a;
}
-(void) setImaginary: (double) b{
    imaginary = b;
}
-(void) print{
    NSLog(@"%g + %gi",real,imaginary);
}
-(double) real{
    return real;
}
-(double) imaginary{
    return imaginary;
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Complex *complex1 = [[Complex alloc] init];
        [complex1 setReal:20];
        [complex1 setImaginary:30];
        [complex1 print];
    }
    return 0;
}
