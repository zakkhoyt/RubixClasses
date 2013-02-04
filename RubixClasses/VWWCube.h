//
//  VWWCube.h
//  RubixClasses
//
//  Created by Zakk Hoyt on 2/4/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VWWFace.h"


// Specifies how to rotate a section of the cube
typedef enum{
    kVWWRotationTopRow = 0,
    kVWWRotationTopRowPrime,
    kVWWRotationBottomRow,
    kVWWRotationBottomRowPrime,
    kVWWRotationLeftColumn,
    kVWWRotationLeftColumnPrime,
    kVWWRotationRightColumn,
    kVWWRotationRigthColumnPrime,
    kVWWRotationFrontSquare,
    kVWWRotationFrontSquarePrime,
    kVWWRotationBackSquare,
    kVWWRotationBackSquarePrime,
} VWWRotation;

@interface VWWCube : NSObject


-(id)initWithSize:(NSUInteger)size;

// Checks if each side of the cube is a solid color. Doesn't matter which
-(bool)isSolved;


//// Mess the cube up. Give it some random twists;
//-(void)jumbleWithIntensity:(NSUInteger)intensity;

// Print the cube data to the console
-(void)printCube;
-(void)printCubeVerbose;

//-(void)sortSquaresByFaceAndLocation;




@end
