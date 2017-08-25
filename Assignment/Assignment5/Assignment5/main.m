//
//  main.m
//  Assignment5
//
//  Created by Julia on 2017/08/24.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "Question.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOn = YES;

        NSLog(@"MATHS! \n\n\n");

        int count = 0;
        NSString *right = @"Right!";
        NSString *wrong = @"Wrong...";

        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        Question *time = [[Question alloc] init];
//        QuestionManager *quetiononManeger = [[QuestionManager alloc] init];
//        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];

        while (gameOn) {

            NSLog(@"Question %d: ", ++count);
            AdditionQuestion *q1 = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [q1 question]);

            NSString *input = [InputHandler getUserInput];

            [time setEndTime:[NSDate date]];

            if ([q1 isCorrect:input]) {
                NSLog(@"%@ \n", right);
                [score setRight:[score right] + 1];
            } else {
                NSLog(@"%@ The answer is %ld. \n", wrong, [q1 answer]);
                [score setWrong:[score wrong] + 1];
            }

            // Display score
            [score printCurrentState];
            float t = [time timeToAnswer];
            NSLog(@"Total time: %ds  Avarage time: %ds \n",
                  (int)t, (int)t / count);
            
            // Ask if user quit
            NSLog(@"Continue? Press 'q' to quit");
            NSString *quit = [InputHandler getUserInput];
            if ([quit isEqualToString:@"q"]) {
                break;
            }
        }
    }
    return 0;
}
