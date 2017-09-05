//
//  Patient.h
//  Hospital
//
//  Created by Julia on 2017/09/01.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
# import "Prescription.h"

@class Doctor;

@interface Patient : NSObject

@property NSInteger age;
@property NSString *name;
@property Symptom sympton;


- (instancetype) initWithName: (NSString *) name Age:(NSInteger) age HealthCard:(Boolean) card;
- (Boolean) visitDoctor: (Doctor *) doctor;
-(void) requestMedication: (Doctor *) doctor;
- (NSMutableArray *) getPrescription;
- (void) addPrescription: (Prescription *) prescription;

extern NSString * const SymptomType_toString[];


@end
