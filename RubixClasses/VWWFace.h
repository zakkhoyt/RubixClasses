//
//  VWWFace.h
//  RubixClasses
//
//  Created by Zakk Hoyt on 2/4/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VWWSquare.h"


// Faces (sides) of the cube
typedef enum{
    kVWWFaceTypeFront = 0,
    kVWWFaceTypeBack,
    kVWWFaceTypeTop,
    kVWWFaceTypeBottom,
    kVWWFaceTypeLeft,
    kVWWFaceTypeRight,
} VWWFaceType;

@interface VWWFace : NSObject
-(id)initWithSize:(NSUInteger)aSize face:(VWWFaceType)aFace color:(VWWColorType)aColor;
@end
