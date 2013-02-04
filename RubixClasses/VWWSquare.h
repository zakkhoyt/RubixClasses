//
//  VWWSquare.h
//  RubixClasses
//
//  Created by Zakk Hoyt on 2/4/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <Foundation/Foundation.h>

// Indivicual square colors
typedef enum{
    kVWWColorTypeBlue = 0x00,
    kVWWColorTypeGreen,
    kVWWColorTypeOrange,
    kVWWColorTypeRed,
    kVWWColorTypeWhite,
    kVWWColorTypeYellow,
} VWWColorType;

@interface VWWSquare : NSObject
-(id)initWithColor:(VWWColorType)aColor;
@end
