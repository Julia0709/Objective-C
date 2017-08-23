//
//  InputCollector.h
//  Assignment4
//
//  Created by Julia on 2017/08/22.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

+ (NSString *) getUserInput;
+ (void) addNewContact : (NSMutableArray *) data;
+ (void) contactList : (NSMutableArray *) data;

@end
