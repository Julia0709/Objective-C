//
//  Question.m
//  Assignment5
//
//  Created by Julia on 2017/08/24.
//  © 2017 Julia
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        _endTime = [NSDate date];
    }
    return self;
}

- (NSTimeInterval)timeToAnswer {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {
    // TODO
}

@end
