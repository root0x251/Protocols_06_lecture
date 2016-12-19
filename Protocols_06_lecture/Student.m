//
//  Student.m
//  Protocols_06_lecture
//
//  Created by Slava on 17.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "Student.h"



@implementation Student

- (void) study{
    NSLog(@"___");
}

#pragma mark Protocol.h

- (BOOL) areYouOk {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is patient %@ ok?", self.name);
    NSLog(@"Im %@ ", ok ? @"YES": @"NO"); // в случае 1 возвращаем YES
    return ok;
}

- (void) takePill {
    NSLog(@"patient %@, takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"patient %@, makes a shot", self.name);
    
}

- (NSString *) howIsYourFamily {
    return @"MAy family is okey =)";
}

@end
