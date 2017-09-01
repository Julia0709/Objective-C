//
//  ScoreKeeper.h
//  Math
//
//  Created by Julia on 2017/08/22.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (assign) int right;
@property (assign) int wrong;

- (NSString *) description;

@end
