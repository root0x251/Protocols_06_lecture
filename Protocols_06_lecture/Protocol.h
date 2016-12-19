//
//  Patient.h
//  Protocols_06_lecture
//
//  Created by Slava on 17.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Protocol <NSObject>


@required       // обязательно для выполнения
@property (strong, nonatomic) NSString *name;
- (BOOL) areYouOk;
- (void) takePill;
- (void) makeShot;

@optional       // не обязательно для выполнения
- (NSString *) howIsYourFamily;
- (NSString *) howIsYouJob;
@end
