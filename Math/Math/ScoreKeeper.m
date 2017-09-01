//
//  ScoreKeeper.m
//  Math
//
//  Created by Julia on 2017/08/22.
//  © 2017 Julia
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init {
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (NSString *) description {
    CGFloat r = [[NSNumber numberWithInteger:self.right] floatValue];
    CGFloat w = [[NSNumber numberWithInteger:self.wrong] floatValue];
    CGFloat p =  (r / (r + w)) * 100;

    return [NSString stringWithFormat:@"score: %zd right, %zd wrong ---- %.1f%%", self.right, self.wrong, p];
}

@end
