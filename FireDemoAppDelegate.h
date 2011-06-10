//
//  FireDemoAppDelegate.h
//  FireDemo
//
//  Created by Sean Che on 11-05-31.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FireDemoViewController.h"

@class FireDemoViewController;

@interface FireDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FireDemoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) FireDemoViewController *viewController;

@end
