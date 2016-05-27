//
//  Shape.m
//  MemoryTest
//
//  Created by MF839-013 on 2016. 5. 27..
//  Copyright © 2016년 SDS. All rights reserved.
//

#import "Shape.h"

@implementation Shape
- (id) init{
    self = [super init];
    
    if(self)
    {
        x = 0;
        y = 0;
    }
    return self;
}

- (void) draw
{
    NSLog(@"Draw shape.");
}

- (void) dealloc
{
    [super dealloc];
}
@end
