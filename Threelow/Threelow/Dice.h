//
//  Dice.h
//  Threelow
//
//  Created by Julia on 2017/08/28.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property NSUInteger faceValue;
@property Boolean held;

+ (instancetype)dice;

- (void) roll;

@end
