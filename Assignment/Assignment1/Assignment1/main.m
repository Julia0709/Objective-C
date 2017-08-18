//
//  main.m
//  Assignment1
//
//  Created by Julia on 2017/08/17.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

// getUserInput function
NSString *getUserInput(int maxLength, NSString *prompt) {

    if (maxLength < 1) {
        maxLength = 255;
    }
    
    NSLog(@"%@: ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    
    if (result != nil) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:
                [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    
    return nil;
}

const int MAX = 255;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *askInputLowercase = @"Type something in lowercase";
        NSString *aslInputUppercase = @"Type something in UPPERCASE";

        NSString *input = [[NSString alloc] init];

        while (1) {
            // 1. To Uppercase
            input = getUserInput(MAX, askInputLowercase);
            NSString *upper = [input uppercaseString];
            NSLog(@"%@ \n", upper);
            
            // 2. To Lowercase
            input = getUserInput(MAX, aslInputUppercase);
            NSString *lower = [input lowercaseString];
            NSLog(@"%@ \n", lower);
        }
        
    }
    return 0;
}
