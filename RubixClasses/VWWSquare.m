//
//  VWWSquare.m
//  RubixClasses
//
//  Created by Zakk Hoyt on 2/4/13.
//  Copyright (c) 2013 Zakk Hoyt. All rights reserved.
//

#import "VWWSquare.h"

@interface VWWSquare ()
@property (nonatomic) VWWColorType color;
@end

@implementation VWWSquare
-(id)initWithColor:(VWWColorType)aColor{
    self = [super init];
    if(self){
        _color = aColor;
        [self initializeClass];
    }
    return self;
}

-(void)initializeClass{
    
}
@end
