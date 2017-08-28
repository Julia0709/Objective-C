//
//  NSObject+Piglatin.m
//  Assignment13
//
//  Created by Julia on 2017/08/25.
//  2017 Julia
//

#import "NSString+Piglatin.h"

@implementation NSString (Piglatin)


+ (NSString *) getUserInput {
    char myStr[256];
    fgets(myStr, 256, stdin);
    NSString *input = [[NSString stringWithCString: myStr encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

- (NSString *)stringByPigLatinization {
    NSString *input = self;

    // Put each word in Array
    NSMutableArray *words = (NSMutableArray *)[input componentsSeparatedByString:@" "];
//    [words removeObject:@""];

    NSString *result = @"";
    for (int i = 0; i < [words count]; i++) {
        NSString *w = words[i];
        for (int j = 0; j < [w length]; j++) {
            char l = [w characterAtIndex:j];
            if (l == 'a' || l == 'e' || l == 'i' || l == 'o' || l == 'u' ||
                l == 'A' || l == 'E' || l == 'I' || l == 'O' || l == 'U') {
                result = [result stringByAppendingString:[w substringWithRange:NSMakeRange(j, [w length] - j)]];
                
                result = [result stringByAppendingString:[w substringWithRange:NSMakeRange(0, j)]];

                break;
            }
        }
        result = [result stringByAppendingString:@"ay "];
    }

    return result;
}

@end
