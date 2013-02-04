//
//  RubixClassesTests.m
//  RubixClassesTests
//
//  Created by Zakk Hoyt on 2/4/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "RubixClassesTests.h"
#import "VWWCube.h"



@interface RubixClassesTests ()
@property (nonatomic, strong) VWWCube* cube;
@end

@implementation RubixClassesTests
(helpers)
-(void)printSeparator{
    SMLOG(@"********************************");
}

-(void)printSeparator:(NSString*)message{
    NSLog(@"********* %@ **********", message);
}

-(void)printMethod:(char*)method{
    NSLog(@"********* %s **********", method);
}

-(bool)examineCubeExpectSolved:(VWWCube*)cube expectSolved:(bool)expectSolved{
    if([cube isSolved] == expectSolved){
        NSLog(@"Cube state okay.");
        return YES;
    }
    NSLog(@"ERROR! Cube is not solved");
    [cube printCube];
    return NO;
}
@end




@implementation RubixClassesTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    STFail(@"Unit tests are not implemented yet in RubixClassesTests");
}

@end
