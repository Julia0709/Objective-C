
//  inputHandler.m
//  Assignment3
//
//  Created by Julia on 2017/08/21.
//  © 2017 Julia
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInput {
    char myStr[256];
    fgets(myStr, 256, stdin);
    NSString *input = [[NSString stringWithCString: myStr encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

@end
