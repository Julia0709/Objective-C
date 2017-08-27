//
//  main.m
//  Assignment13
//
//  Created by Julia on 2017/08/25.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "NSObject+Piglatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"Pig Latin! \n\n\n");

        NSString *input = [NSObject getUserInput];
        NSLog(@"%@", input);
    }

    return 0;
}
