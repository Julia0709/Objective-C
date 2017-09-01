//
//  SubtractionQuestion.m
//  Math
//
//  Created by Julia on 2017/08/24.
//  © 2017 Julia
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init {
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    
    self.question = [NSString stringWithFormat:@"%li - %li = ?", (long) self.leftValue, (long) self.rightValue];
    self.answer = self.leftValue - self.rightValue;
}

@end
