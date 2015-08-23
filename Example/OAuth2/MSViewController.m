//
//  MSViewController.m
//  OAuth2
//
//  Created by Trong Dinh on 08/23/2015.
//  Copyright (c) 2015 Trong Dinh. All rights reserved.
//

#import "MSViewController.h"
#import "OAuthRequestController.h"

@interface MSViewController ()

@end

@implementation MSViewController <OAuthRequestControllerDelegate>

#pragma mark - view life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self doAuthorize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Functions

- (void)doAuthorize {
    NSMutableDictionary *dictService = [NSMutableDictionary dictionary];
    [dictService setObject:@"https://www.fitbit.com/oauth2/authorize" forKey:kOAuth_AuthorizeURL];
    [dictService setObject:@"https://api.fitbit.com/oauth2/token" forKey:kOAuth_TokenURL];
    [dictService setObject:@"YOUR CLIENT ID" forKey:kOAuth_ClientId];
    [dictService setObject:@"YOUR SECRET KEY" forKey:kOAuth_Secret];
    [dictService setObject:@"YOUR CALLBACK URL" forKey:kOAuth_Callback];
    [dictService setObject:@"activity heartrate location nutrition profile settings sleep social weight" forKey:kOAuth_Scope];
    
    
    OAuthRequestController *oauthController = [[OAuthRequestController alloc] initWithDict:dictService];
    oauthController.view.frame = self.view.frame;
    oauthController.delegate = self;
    [self presentViewController:oauthController animated:YES completion:^{
        
    }];
}

#pragma mark - OAuthRequestControllerDelegate method

- (void)didAuthorized:(NSDictionary *)dictResponse {
    NSLog(@"%@", dictResponse);
}

@end
