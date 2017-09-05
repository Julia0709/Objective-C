//
//  Patient.m
//  Hospital
//
//  Created by Julia on 2017/09/01.
//  © 2017 Julia
//

#import "Patient.h"
#import "Doctor.h"

@interface Patient() {
    @private
    Boolean healthCard;
    NSMutableArray *prescriptions;
}

@end

@implementation Patient

NSString *const SymptomType_toString[] = {
    [cold] = @"Cold",
    [flu] = @"Flu",
    [adhd] = @"ADHD"
};

- (instancetype)initWithName: (NSString *) name Age:(NSInteger) age HealthCard:(Boolean) card
{
    self = [super init];
    if (self) {
        _name = name;
        _age  = age;
        healthCard = card;
        _sympton = (Symptom) (arc4random() % (int) adhd);
        prescriptions = [NSMutableArray array];
    }
    return self;
}

-(Boolean) visitDoctor: (Doctor *) doctor {
    return [doctor acceptPatient:self HealthCard: healthCard];
}

-(void) addPrescription: (Prescription *) prescription {
    [prescriptions addObject: prescription];
}

-(NSMutableArray *) getPrescription {
    return prescriptions;
}

-(void) requestMedication: (Doctor *) doctor {
    if ([doctor prescribeMedication: self]) {
        NSLog(@"GOT THE MEDICATION!");
    } else {
        NSLog(@"MEDICATION REJECTED!");
    }
}


-(NSString *)description {
    return [NSString stringWithFormat:@"Patient Information\nName: %@\nAge: %lu\nHealthCard: %@\nSymptom: %@\n", _name, _age, (healthCard) ? @"Valid" : @"Invalid", SymptomType_toString[_sympton]];
}

@end
