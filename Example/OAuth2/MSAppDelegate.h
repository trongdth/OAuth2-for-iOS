//
//  MSAppDelegate.h
//  OAuth2
//
//  Created by Trong Dinh on 08/23/2015.
//  Copyright (c) 2015 Trong Dinh. All rights reserved.
//

@import UIKit;
#import <OAuth2/OAuthRequestController.h>

@interface MSAppDelegate : UIResponder <UIApplicationDelegate, OAuthRequestControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
