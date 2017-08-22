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
        NSString *askInputUppercase = @"Type something in UPPERCASE";
        NSString *askInputNumber = @"Type some number";
        NSString *askInputSentence = @"Type a sentence";
        NSString *askInputQuestion = @"Type ? or ! at the end of your sentence";
        NSString *askInputSpace =@"Type something with spaces";

        NSString *input = [[NSString alloc] init];

        while (1) {

            // 1. To Uppercase
            input = getUserInput(MAX, askInputLowercase);
            NSString *upper = [input uppercaseString];
            NSLog(@"%@ \n", upper);
            
            // 2. To Lowercase
            input = getUserInput(MAX, askInputUppercase);
            NSString *lower = [input lowercaseString];
            NSLog(@"%@ \n", lower);
            
            // 3. Numberize
            input = getUserInput(MAX, askInputNumber);
            NSNumber *number = [[[NSNumberFormatter alloc] init] numberFromString: input];
            if (number != nil) {
                NSLog(@"%ld", [number integerValue]);
            } else {
                NSLog(@"%@", @"Can't be converted to integer.");
            }
            
            // 4. Canadianize
            input = getUserInput(MAX, askInputSentence);
            NSLog(@"%@", [input stringByAppendingString:@", eh?"]);
            
            // 5. Respond
            input = getUserInput(MAX, askInputQuestion);
            if ([input characterAtIndex: [input length] - 1] == '?') {
                NSLog(@"%@", @"I don't know");
            } else if ([input characterAtIndex: [input length] - 1] == '!') {
                NSLog(@"%@", @"Whoa, calm down!");
            }
            
            // 6. De-Space
            input = getUserInput(MAX, askInputSpace);
            NSLog(@"%@", [input stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            
        }
        
    }
    return 0;
}
