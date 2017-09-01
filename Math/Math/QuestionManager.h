//
//  QuestionManager.h
//  Math
//
//  Created by Julia on 2017/08/31.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray *questions;

- (NSString *) timeOutput;

@end
