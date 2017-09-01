//
//  QuestionFactory.m
//  Assignment5
//
//  Created by Julia on 2017/08/31.
//  © 2017 Julia
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames= @[@"AdditionQuestion", @"SubtractionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion {
    NSString *questionType = [_questionSubclassNames objectAtIndex: arc4random_uniform(2)];
    return [[NSClassFromString(questionType) alloc] init];
}

@end
