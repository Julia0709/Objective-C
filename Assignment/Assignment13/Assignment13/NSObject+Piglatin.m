//
//  NSObject+Piglatin.m
//  Assignment13
//
//  Created by Julia on 2017/08/25.
//  2017 Julia
//

#import "NSObject+Piglatin.h"

@implementation NSObject (Piglatin)


+ (NSString *) getUserInput {
    char myStr[256];
    fgets(myStr, 256, stdin);
    NSString *input = [[NSString stringWithCString: myStr encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

- (NSString *)stringByPigLatinization {

    return @"NSString";
}

@end