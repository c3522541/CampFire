//
//  FireDemoViewController.m
//  FireDemo
//
//  Created by Sean Che on 11-05-31.
//  Copyright 2011 n/a. All rights reserved.
//

#import "FireDemoViewController.h"
#import "MainViewController.h"

@implementation FireDemoViewController

@synthesize infoButton;
@synthesize mainViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [infoButton release];
    [mainViewController release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    contentView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    [contentView setBackgroundColor:[UIColor whiteColor]];
    infoButton = [UIButton buttonWithType: UIButtonTypeInfoLight];
    infoButton.frame = CGRectMake(160.0f, 0.0f, 160.0f, 160.0f); //버튼이 그려질 위치를 표시한다.
    infoButton.center = CGPointMake(160.0f, 240.0f);
//    [infoButton setTitle:@"TITLE" forState:UIControlStateNormal];
//    infoButton.hidden = NO;
//    infoButton.alpha = 1.0f;
    infoButton.opaque = NO;
    UIButton *normalButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    normalButton.frame = CGRectMake(160.0f, 0.0f, 160.0f, 160.0f); //버튼이 그려질 위치를 표시한다.
    normalButton.center = CGPointMake(160.0f, 240.0f);
    [normalButton setTitle:@"TITLE" forState:UIControlStateNormal];
    normalButton.hidden = NO;
//    normalButton.alpha = 1.0f;
    normalButton.opaque = NO;
    mainViewController = [[MainViewController alloc] init];
    
    self.view = contentView;
    [self.view insertSubview:normalButton belowSubview:infoButton];
//    [self.view insertSubview:mainViewController.view belowSubview:infoButton];
//    [self.view insertSubview:infoButton belowSubview:mainViewController.view];
   // [self.view addSubview:infoButton];
    [normalButton release];
    [contentView release];
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
