//
//  RootViewController.m
//  ViewDidUnLoadDemoIOS6
//
//  Created by wsh on 6/25/13.
//  Copyright (c) 2013 wsh. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

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
	
    UIView *bgView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    bgView.backgroundColor = [UIColor grayColor];
    self.view = bgView;
    [bgView release];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(160 - 30, 240 - 10, 60, 20)];
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"Next" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    [button release];
//    [button buttonType];
}

- (void)next
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
    [secondVC release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
