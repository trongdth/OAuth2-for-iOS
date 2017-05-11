//
//  MSViewController.m
//  OAuth2
//
//  Created by Trong Dinh on 08/23/2015.
//  Copyright (c) 2015 Trong Dinh. All rights reserved.
//

#import "MSViewController.h"
#import "MSAppsViewController.h"

@interface MSViewController ()

@end

@implementation MSViewController

#pragma mark - view life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _arrRetains = [NSMutableArray array];
    
    MSAppsViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"MSAppsViewController"];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self.view addSubview:nav.view];
    
    [_arrRetains addObject:nav];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
