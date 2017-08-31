//
//  InputCollector.m
//  Threelow
//
//  Created by Julia on 2017/08/22.
//  © 2017 Julia
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *) inputForPrompt : (NSString *) prompt {
    NSLog(@"%@: ", prompt);
    char inputChars[256];
    char *result = fgets(inputChars, 256, stdin);
    
    if (result != nil) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:
                [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    
    return nil;
}

@end
