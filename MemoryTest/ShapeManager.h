//
//  ShapeManager.h
//  MemoryTest
//
//  Created by MF839-013 on 2016. 5. 27..
//  Copyright © 2016년 SDS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@interface ShapeManager : NSObject
{
    Rectangle *rectangle;
}

- (void) setRectangle:(Rectangle*)rect;
- (void) drawShape;
@end
