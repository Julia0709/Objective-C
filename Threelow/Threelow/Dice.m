//
//  Dice.m
//  Threelow
//
//  Created by Julia on 2017/08/28.
//  © 2017 Julia
//

#import "Dice.h"

@implementation Dice

- (instancetype)init {
    self = [super init];
    if (self) {
        _faceValue = arc4random_uniform(6) + 1;
        _held = false;
    }
    return self;
}

+ (instancetype)dice {
    return [[self alloc] init];
}

- (void) roll {
    _faceValue = arc4random_uniform(6) + 1;
}

- (NSString *)description {
    switch (_faceValue) {
        case 1:
            if (_held == false) {
                return @"⚀";
            }
            return @"[⚀]";
            break;
        case 2:
            if (_held == false) {
                return @"⚁";
            }
            return @"[⚁]";
            break;
        case 3:
            if (_held == false) {
                return @"⚂";
            }
            return @"[⚂]";
            break;
        case 4:
            if (_held == false) {
                return @"⚃";
            }
            return @"[⚃]";
            break;
        case 5:
            if (_held == false) {
                return @"⚄";
            }
            return @"[⚄]";
            break;
        case 6:
            if (_held == false) {
                return @"⚅";
            }
            return @"[⚅]";
            break;
            
        default:
            return @"Invalid Die";
            break;
    }
}

@end
