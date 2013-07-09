//
//  SecondViewController.m
//  ViewDidUnLoadDemoIOS6
//
//  Created by wsh on 6/25/13.
//  Copyright (c) 2013 wsh. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSLog(@"hello%d", [self isViewLoaded]);
    UIView *bgView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    bgView.backgroundColor = [UIColor yellowColor];
    self.view = bgView;
    [bgView release];
}

- (void)viewDidUnload
{
    NSLog(@"i'm viewDidUnload");
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    NSLog(@"hello%d", [self isViewLoaded]);
    
//    if ([[UIDevice currentDevice].systemVersion compare:@"6.0"] == NSOrderedSame
//        || [[UIDevice currentDevice].systemVersion compare:@"6.0"] == NSOrderedAscending)
    if ([self.view window] == nil)
    {
        NSLog(@"memory warning!");
        self.view = nil;
    }
}

- (void)dealloc
{
    NSLog(@"second view dealloc");
    [super dealloc];
}

@end
