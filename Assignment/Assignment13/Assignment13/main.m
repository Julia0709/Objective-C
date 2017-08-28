//
//  main.m
//  Assignment13
//
//  Created by Julia on 2017/08/25.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "NSString+Piglatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"Pig Latin! \n\n\n");

        NSLog(@"Enter some words: ");
        NSString *input = [NSString getUserInput];

        NSString *output = [input stringByPigLatinization];
        NSLog(@"%@", output);
    }

    return 0;
}
