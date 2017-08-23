//
//  main.m
//  Assignment3
//
//  Created by Julia on 2017/08/21.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Math quiz!");
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        while(1) {
            
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [q1 question]);
            
            NSString *input = [InputHandler getUserInput];
            if ([q1 isCorrect:input]) {
                NSLog(@"Correct!");
                [score setRight:[score right] + 1];
            } else {
                NSLog(@"Wrong! The asnwer is %ld.", [q1 answer]);
                [score setWrong:[score wrong] + 1];
            }
            
            [score printCurrentState];
            
            NSLog(@"Press 'q' to quit");
            NSString *quit = [InputHandler getUserInput];
            if ([quit isEqualToString:@"q"]) {
                break;
            } else {
                NSLog(@"Continue");
            }
        }
        
    }
    return 0;
}
