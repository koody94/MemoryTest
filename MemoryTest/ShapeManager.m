//
//  ShapeManager.m
//  MemoryTest
//
//  Created by MF839-013 on 2016. 5. 27..
//  Copyright © 2016년 SDS. All rights reserved.
//

#import "ShapeManager.h"

@implementation ShapeManager

- (id) init{
    self = [super init];
    
    if(self)
    {

    }
    return self;
}

- (void) dealloc
{
    if(_rectangle)
        [_rectangle release];
    
    [super dealloc];
}

//- (void) setRectangle:(Rectangle*)rect
//{
//    if(rectangle)
//        [rectangle release];
//    rectangle = [rect retain];
//}

- (void) drawShape
{
    [_rectangle draw];
}
@end
