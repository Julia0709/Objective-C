//
//  main.m
//  Assignment5
//
//  Created by Julia on 2017/08/24.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL gameOn = YES;
        NSLog(@"MATHS! \n\n\n");
        NSString *right = @"Right! \n";
        NSString *left = @"Wrong... \n";

        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        InpurHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *quetiononManeger = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];

        while (gameOn) {
            NSLog(@"Game on going!");
        }
    }
    return 0;
}
