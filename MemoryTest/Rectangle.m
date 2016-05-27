//
//  Rectangle.m
//  MemoryTest
//
//  Created by MF839-013 on 2016. 5. 27..
//  Copyright © 2016년 SDS. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
- (id) init{
    self = [super init];
    
    if(self)
    {
        width = 0;
        height = 0;
    }
    return self;
}
- (void) setWidth: (int)newWidth andHeight:(int)newHeight
{
    width = newWidth;
    height = newHeight;
}

- (void) draw
{
    [super draw];
    NSLog(@"Draw Rectangle");
}

- (void) dealloc
{
    [super dealloc];
}
@end
