//
//  Doctor.h
//  Hospital
//
//  Created by Julia on 2017/09/01.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property NSString *name;
@property NSString *spec;

- (instancetype) initWithName: (NSString *) name Specializantion: (NSString *) spec;
- (Boolean) acceptPatient: (Patient *) patient HealthCard: (Boolean) healthCard;
- (Boolean) prescribeMedication: (Patient *) patient;

@end
