//
//  VWWCube.m
//  RubixClasses
//
//  Created by Zakk Hoyt on 2/4/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "VWWCube.h"


@interface VWWCube ()
@property (nonatomic) NSUInteger size;
@property (nonatomic, strong) NSMutableArray* faces;
@end




@implementation VWWCube


-(id)initWithSize:(NSUInteger)aSize{
    self = [super init];
    if(self){
        _size = aSize;
        [self initializeClass];
    }
    return self;
}

-(void)initializeClass{
    _faces = [@[[[VWWFace alloc] initWithSize:self.size face:kVWWFaceTypeBack color:kVWWColorTypeBlue],
              [[VWWFace alloc] initWithSize:self.size face:kVWWFaceTypeBottom color:kVWWColorTypeGreen],
              [[VWWFace alloc] initWithSize:self.size face:kVWWFaceTypeFront color:kVWWColorTypeOrange],
              [[VWWFace alloc] initWithSize:self.size face:kVWWFaceTypeLeft color:kVWWColorTypeRed],
              [[VWWFace alloc] initWithSize:self.size face:kVWWFaceTypeRight color:kVWWColorTypeWhite],
              [[VWWFace alloc] initWithSize:self.size face:kVWWFaceTypeTop color:kVWWColorTypeYellow]
              ]mutableCopy];
}

// Checks if each side of the cube is a solid color. Doesn't matter which
-(bool)isSolved{
//    // sort by color
//    [self.squares sortUsingComparator:^(id obj1, id obj2) {
//        VWWSquareModel* square1 = (VWWSquareModel*)obj1;
//        VWWSquareModel* square2 = (VWWSquareModel*)obj2;
//        return square1.valueForColor < square2.valueForColor ? NSOrderedAscending : NSOrderedDescending;
//    }];
//    return YES;
    
    return NO;
}


// Print a short representation of the cube
-(void)printCube{
//    const NSUInteger kNumSides = 6;
//    NSMutableString* cubeString = [NSMutableString new];
//    NSMutableString* rowString = [NSMutableString new];
//    [cubeString setString:@"Current cube state:\n"];
//    [self sortSquaresByFaceAndLocation];
//    VWWSquareModel* square = nil;
//    NSUInteger squareIndex = 0;
//    for(NSUInteger f = 0; f < kNumSides; f++){
//        // Get the face name and print it
//        squareIndex = f * self.squaresPerColor;
//        square  = (self.squares)[squareIndex];
//        [cubeString appendFormat:@"---- %@ ----\n", square.stringForFace];
//        
//        for(NSUInteger y = 0; y < self.cubeSize; y++){
//            for(NSUInteger x = 0; x < self.cubeSize; x++){
//                // Get the color of the square and append it to rowString
//                squareIndex = f * self.squaresPerColor + y * self.cubeSize + x;
//                square = (self.squares)[squareIndex];
//                [rowString appendFormat:@"%c", square.charForColor];
//            }
//            [cubeString appendFormat:@"%@\n", rowString];
//            [rowString setString:@""];
//        }
//    }
//    [cubeString appendString:@"----------------"];
//    NSLog(@"%@", cubeString);
}


// Print the cube data to the console
-(void)printCubeVerbose{
//    for(NSUInteger index = 0; index < self.squaresPerColor * 6; index++){
//        NSLog(@"%@", (self.squares)[index]);
//    }
}


@end
