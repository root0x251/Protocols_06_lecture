//
//  Developer.h
//  Protocols_06_lecture
//
//  Created by Slava on 17.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"
#import <CoreGraphics/CoreGraphics.h>

@interface Developer : NSObject <Protocol>

@property (assign, nonatomic) CGFloat experience;
@property (strong, nonatomic) NSString *name;


- (void) work;

@end
 
