//
//  main.m
//  Math
//
//  Created by Julia on 2017/08/24.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "Question.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOn = YES;

        NSLog(@"MATHS! \n\n\n");

        ScoreKeeper *sk = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];

        while (gameOn) {

            Question *q1 = [questionFactory generateRandomQuestion];
            [[questionManager questions] addObject: q1];
            NSLog(@"%@", [q1 question]);
            
            NSString *input = [InputHandler getUserInput];
            
            if ([input isEqualToString:@"quit"]) {
                gameOn = NO;
            }
            else if ([q1 answer] == [input integerValue]) {
                NSLog(@"Right!");
                sk.right++;
                
            } else {
                NSLog(@"Wrong! The answer is %ld. \n", (long)[q1 answer]);
                sk.wrong++;
            }
            NSLog(@"%@", sk);
            NSLog(@"%@", [questionManager timeOutput]);
        }
        NSLog(@"Game Finish!");
    }

    return 0;
}
