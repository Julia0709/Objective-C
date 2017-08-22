//
//  box.h
//  Assignment2
//
//  Created by Julia on 2017/08/21.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype)initWithHeight:(float) height Width:(float) width Length: (float) length;
- (float) getVolume;
- (float) ratioToAnotherBox: (Box *) box;

@end
