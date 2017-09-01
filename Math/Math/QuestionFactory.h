//
//  QuestionFactory.h
//  Assignment5
//
//  Created by Julia on 2017/08/31.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;

- (Question *) generateRandomQuestion;

@end
