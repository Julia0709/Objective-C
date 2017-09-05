//
//  main.m
//  Hospital
//
//  Created by Julia on 2017/09/01.
//  © 2017 Julia
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Doctor *doctor1 = [[Doctor alloc] initWithName:@"Derrick" Specializantion:@"Surgeon"];
        Patient *patient1 = [[Patient alloc] initWithName:@"aa" Age:30 HealthCard:true];
        
        if([patient1 visitDoctor:doctor1]) {
            NSLog(@"\n%@", patient1);
            [patient1 requestMedication:doctor1];
        } else {
            NSLog(@"Bye");
        }
        
    }
    return 0;
}
