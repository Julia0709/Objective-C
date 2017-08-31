//
//  GameController.h
//  Threelow
//
//  Created by Julia on 2017/08/28.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray *displayDice;

- (void) roll;
- (void) holdDie: (NSUInteger) die;
- (void) displayCurrentDeck;
- (void) resetDice;
- (void) displayScore: (Boolean) done;

@end
