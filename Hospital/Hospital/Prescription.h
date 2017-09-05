//
//  Prescription.h
//  Hospital
//
//  Created by Julia on 2017/09/01.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>

@interface Prescription : NSObject

typedef enum {
    cold = 0,
    flu,
    adhd
} Symptom;

- (instancetype) initWithSymptom: (Symptom) symptom;

@end
