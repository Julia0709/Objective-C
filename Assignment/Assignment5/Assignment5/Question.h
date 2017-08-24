//
//  Question.h
//  Assignment5
//
//  Created by Julia on 2017/08/24.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (NSTimeInterval)timeToAnswer;
- (void)generateQuestion;

@end

