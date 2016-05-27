//
//  Rectangle.h
//  MemoryTest
//
//  Created by MF839-013 on 2016. 5. 27..
//  Copyright © 2016년 SDS. All rights reserved.
//

#import "Shape.h"

@interface Rectangle : Shape
{
    int width, height;
}
- (void) setWidth: (int)width andHeight:(int)height;
- (void) draw;
@end
