//
//  main.m
//  MemoryTest
//
//  Created by MF839-013 on 2016. 5. 27..
//  Copyright © 2016년 SDS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Rectangle.h"
#import "ShapeManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Rectangle *rect=[[Rectangle alloc]init]; // RC = 1
//        Rectangle *rect2 = [rect retain];        // RC = 2
//        
//        [rect draw];
//        [rect release];                          // RC -1 = 1
//        
//        [rect2 draw];                            // RC  = 1
//        [rect2 release];                         // RC  = 0
        ShapeManager *shapeManager =[[ShapeManager alloc]init]; //SM:1
        
        Rectangle *rectangle=[[Rectangle alloc]init];           //R:1
        
        [shapeManager setRectangle:rectangle];                   //SM:1 R:2
        [rectangle release];                                     //SM:1 R:1
        
        [shapeManager drawShape];
        [ShapeManager release];                                  //SM:0 R:1

    }
    return 0;
}
