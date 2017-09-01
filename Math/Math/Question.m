//
//  Question.m
//  Math
//
//  Created by Julia on 2017/08/24.
//  © 2017 Julia
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(100);
        _rightValue = arc4random_uniform(100);
        _startTime = [NSDate date];
    }
    return self;
}

- (NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

@end
