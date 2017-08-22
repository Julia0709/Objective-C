//
//  box.m
//  Assignment2
//
//  Created by Julia on 2017/08/21.
//  © 2017 Julia
//

#import "box.h"

@implementation Box

- (instancetype)initWithHeight:(float) height Width:(float) width Length: (float) length {

    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) getVolume {

    return self.height * self.width * self.length;
}

- (float) ratioToAnotherBox: (Box *) box {

    return self.getVolume / box.getVolume;
}

@end
