//
//  FireDemoViewController.h
//  FireDemo
//
//  Created by Sean Che on 11-05-31.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;


@interface FireDemoViewController : UIViewController {
    UIView *contentView;
    UIButton *infoButton;
    MainViewController *mainViewController;
}

@property (nonatomic, retain) UIButton *infoButton;
@property (nonatomic, retain) MainViewController *mainViewController;

@end
