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

+ (void) addNewContact : (NSMutableArray *) data {
    
    NSLog(@"Name: \n");
    NSString *name = [self getUserInput];
    while ([name length] == 0) {
        NSLog(@"Please enter a name \n");
        name = [self getUserInput];
    }
    [data addObject:name];

    NSLog(@"Email: \n");
    NSString *email = [self getUserInput];
    while ([email length] == 0) {
        NSLog(@"Please enter a Email address \n");
        email = [self getUserInput];
    }
    [data addObject:email];

    NSLog(@"Saved! \n");
}

+ (void) contactList : (NSMutableArray *) data {

    NSLog(@"Contact List: \n");
    
    NSUInteger l = [data count];
    
    if (l == 0) {
        NSLog(@"No data \n");
    } else {
        for (int i = 0; i < l; i++) {
            NSString *result = [data objectAtIndex:i];
            NSLog(@"%@ \n", result);
        }
    }

    NSLog(@"--- end ---\n");
}

@end
