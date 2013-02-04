//
//  VWWFace.m
//  RubixClasses
//
//  Created by Zakk Hoyt on 2/4/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "VWWFace.h"

@interface VWWFace ()
@property (nonatomic) NSUInteger size;
@property (nonatomic) VWWFaceType face;
@end

@implementation VWWFace

-(id)initWithSize:(NSUInteger)aSize face:(VWWFaceType)aFace color:(VWWColorType)aColor{
    self = [super init];
    if(self){
        _size = aSize;
        [self initializeClass];
        
    }
    return self;
}

-(void)initializeClass{
    
}
@end
