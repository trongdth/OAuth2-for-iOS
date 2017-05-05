//
//  MSAppDelegate.m
//  OAuth2
//
//  Created by Trong Dinh on 08/23/2015.
//  Copyright (c) 2015 Trong Dinh. All rights reserved.
//

#import "MSAppDelegate.h"

@implementation MSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    NSMutableDictionary *dictService = [NSMutableDictionary dictionary];
    [dictService setObject:@"https://www.fitbit.com/oauth2/authorize" forKey:kOAuth_AuthorizeURL];
    [dictService setObject:@"https://api.fitbit.com/oauth2/token" forKey:kOAuth_TokenURL];
    [dictService setObject:@"227Y5B" forKey:kOAuth_ClientId];
    [dictService setObject:@"599b53fa8568f23b4990dce315832577" forKey:kOAuth_Secret];
    [dictService setObject:@"robotbase://authorize" forKey:kOAuth_Callback];
    [dictService setObject:@"activity heartrate location nutrition profile settings sleep social weight" forKey:kOAuth_Scope];
    
    OAuthRequestController *oauthController = [[OAuthRequestController alloc] initWithDict:dictService];
    oauthController.delegate = self;
    
    self.window.rootViewController = oauthController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - OAuthRequestControllerDelegate method

- (void)didAuthorized:(NSDictionary *)dictResponse {
    NSLog(@"%@", dictResponse);
}

- (void)didCancel {
    self.window.rootViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"MSViewController"];
}

@end
