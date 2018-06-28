//
//  main.m
//  16-1
//
//  Created by cedrus on 2018/6/28.
//  Copyright © 2018年 cedrus.weng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *fName = @"testfile";
        NSFileManager *fm;
        NSDictionary * attr;
        
        fm =[NSFileManager defaultManager];
        
        if([fm fileExistsAtPath:fName] == NO){
            NSLog(@"File does't exist!");
            return 1;
        }
        
        if([fm copyItemAtPath:fName toPath:@"newfile" error:NULL] == NO){
            NSLog(@"File copy failed!");
            return 2;
        }
        
        if([fm contentsEqualAtPath:fName andPath:@"newfile"] == NO){
            NSLog(@"Files are Not Equal!");
            return 3;
        }
        
        if([fm moveItemAtPath:@"newfile" toPath:@"newfile2" error:NULL] == NO){
            NSLog(@"File rename Failed");
            return 4;
        }
        
        if((attr = [fm attributesOfItemAtPath:@"newfile2" error:NULL]) == nil){
            NSLog(@"Couldn't get file attributes!");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes",[[attr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        if([fm removeItemAtPath:fName error:NULL] == NO){
            NSLog(@"file removal failed");
            return 6;
        }
        
        NSLog(@"All operations were successful");
        
        NSLog(@"%@",[NSString stringWithContentsOfFile:@"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
        
        
    }
    return 0;
}
