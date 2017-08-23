//
//  InputCollector.m
//  Assignment4
//
//  Created by Julia on 2017/08/22.
//  © 2017 Julia
//

#import "InputCollector.h"

@implementation InputCollector

+ (NSString *) getUserInput {
    char myStr[256];
    fgets(myStr, 256, stdin);
    
    return [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+ (int) addNewContact {
    
    NSLog(@"Name: \n");
    NSString *name = [self getUserInput];
    while ([name length] == 0) {
        NSLog(@"Please enter a name \n");
        name = [self getUserInput];
    }

    NSLog(@"Email: \n");
    NSString *email = [self getUserInput];
    while ([email length] == 0) {
        NSLog(@"Please enter a Email address \n");
        email = [self getUserInput];
    }
    
    NSLog(@"Saved! \n");
    return 1;
}

@end
