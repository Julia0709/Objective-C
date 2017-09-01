//
//  AddtionQuestion.m
//  Math
//
//  Created by Julia on 2017/08/22.
//  © 2017 Julia
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    
    super.question = [NSString stringWithFormat:@"%li + %li = ?", (long) super.leftValue, (long) super.rightValue];
    super.answer = super.leftValue + super.rightValue;
}

@end
