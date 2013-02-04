//
//  RubixClassesTests.h
//  RubixClassesTests
//
//  Created by Zakk Hoyt on 2/4/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "../RubixClasses/VWWUtilities.h"

@class VWWCube;


@interface RubixClassesTests : SenTestCase

@end


@interface RubixClassesTests (helpers)
-(void)printSeparator;
-(void)printSeparator:(NSString*)message;
-(void)printMethod:(char*)method;
-(bool)examineCubeExpectSolved:(VWWCube*)cube expectSolved:(bool)expectSolved;
@end


