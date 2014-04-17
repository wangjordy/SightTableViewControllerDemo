//
//  ViewController.m
//  SightTableViewController
//
//  Created by 兴朝 王 on 14-4-17.
//  Copyright (c) 2014年 com.autohome. All rights reserved.
//

#import "ViewController.h"
#import "CustomerViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CustomerViewController *customerViewController = [[CustomerViewController alloc] initWithNibName:@"CustomerViewController" bundle:nil];
    [self.view addSubview:customerViewController.view];
    [self addChildViewController:customerViewController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
