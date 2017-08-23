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

        NSString *menu = (@"How can I help you? \n'new'  - Create a new contact \n'list' - List all contacts \n'quit' - Exit Application \n");

        while(1) {
            
            NSLog(@"%@", menu);
            NSString *input = [InputCollector getUserInput];

            if ([input isEqualToString:@"new"]) {
                [InputCollector addNewContact];
                continue;
            } else if ([input isEqualToString:@"list"]) {
                NSLog(@"list typed \n");
            } else if ([input isEqualToString:@"quit"]) {
                break;
            } else {
                NSLog(@"Type 'new', 'list' or 'quit' \n");
            }
        }
            
    }
    return 0;
}
