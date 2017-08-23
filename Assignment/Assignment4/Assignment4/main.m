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

        NSMutableArray *data = [[NSMutableArray alloc] init];
        
        NSString *menu = (@"How can I help you? \n'new'  - Create a new contact \n'list' - List all contacts \n'quit' - Exit Application \n");

        while(1) {
            
            NSLog(@"%@", menu);
            NSString *input = [InputCollector getUserInput];

            if ([input isEqualToString:@"new"]) {
                [InputCollector addNewContact:data];
                continue;
            } else if ([input isEqualToString:@"list"]) {
                [InputCollector contactList:data];
            } else if ([input isEqualToString:@"quit"]) {
                break;
            } else {
                NSLog(@"Type 'new', 'list' or 'quit' \n");
            }
        }
        

        
            
    }
    return 0;
}
