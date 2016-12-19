//
//  AppDelegate.m
//  Protocols_06_lecture
//
//  Created by Slava on 17.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Protocol.h"
#import "Student.h"
#import "Danccer.h"
#import "Developer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    Danccer *dancerOne = [[Danccer alloc]init];
    Danccer *dancerTwo = [[Danccer alloc]init];
    
    Student *studentOne = [[Student alloc]init];
    Student *studentTwo = [[Student alloc]init];
    Student *studentThree = [[Student alloc]init];
    
    Developer *developerMaster = [[Developer alloc]init];
    
    dancerOne.name = @"dancerOne";
    dancerTwo.name = @"dancerTwo";
    
    studentOne.name = @"studentOne";
    studentTwo.name = @"studentTwo";
    studentThree.name = @"studentThree";
    
    developerMaster.name = @"developerMaster";
    
    NSObject *fake = [[NSObject alloc]init];    // создаем фейк для проверки
    
    NSArray *arrayPatients = @[fake, studentOne,dancerOne, developerMaster, studentTwo, dancerTwo, studentThree];
    // свойство обязательно для выполнения (@required)
    
    for (id <Protocol> patient in arrayPatients) { // каждый patient поддерживает Protocol (протокол)
        
        
        if ([patient conformsToProtocol:@protocol(Protocol)]) {     //делаем проверку, отвечает ли наш пациент протоколу <Protocol>
            
            
            NSLog(@"Patient name - %@", patient.name);
            //  свойства не оьязательные для проверки @optional
            if ([patient respondsToSelector:@selector(howIsYourFamily)]) {  // если у объекта пациент есть указатель на селектор (howIsYourFamily)
                NSLog(@"How is your family? \n%@", [patient howIsYourFamily]);
            }
            if ([patient respondsToSelector:@selector(howIsYouJob)]) {  // если метод (howIsYouJob) реализован у пациента (patient)
                NSLog(@"How is your job? \n%@", [patient howIsYouJob]);     // то мы спрашиваем, как работа твоя
            }
            
            if (![patient areYouOk]) {      // ! если пациент не ок, даем пилюлю
                [patient takePill];
                if (![patient areYouOk]) {  // ! если пациент не ок, даем укол
                    [patient makeShot];
                }
            }
            
            
        } else {
            NSLog(@"FAKE!!!!!!");
        }
    }
    
    
            // МЕТОД 2
//    for (int i = 0; i < [arrayPatients count]; i++) {
//        id <Protocol> patient = [arrayPatients objectAtIndex:i];
    
    
    
//    }
    
    
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
