//
//  AddtionQuestion.h
//  Assignment5
//
//  Created by Julia on 2017/08/22.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic) NSString *question;
@property (assign) NSInteger answer;
@property (assign) NSInteger num1;
@property (assign) NSInteger num2;

- (instancetype) init;
- (BOOL) isCorrect: (NSString *) userAnswer;

@end
