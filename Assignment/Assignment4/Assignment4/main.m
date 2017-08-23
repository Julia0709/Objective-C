//
//  main.m
//  Assignment4
//
//  Created by Julia on 2017/08/22.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"How can I help you?");
        NSLog(@"\n'new'  - Create a new contact \n'list' - List all contacts \n'quit' - Exit Application \n");

        while(1) {

            NSString *input = [InputCollector getUserInput];
            if ([input isEqualToString:@"new"]) {
                NSLog(@"new typed \n");
            } else if ([input isEqualToString:@"list"]) {
                NSLog(@"list typed \n");
            } else if ([input isEqualToString:@"quit"]) {
                NSLog(@"quit typed \n");
            } else {
                NSLog(@"Type 'new', 'list' or 'quit' \n");
            }
        }
            
    }
    return 0;
}
