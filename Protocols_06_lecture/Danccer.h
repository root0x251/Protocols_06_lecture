//
//  Danccer.h
//  Protocols_06_lecture
//
//  Created by Slava on 17.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"

@interface Danccer : NSObject <Protocol>

@property (strong, nonatomic) NSString *favoriteDance;
@property (strong, nonatomic) NSString *name;

- (void) dance;

@end
