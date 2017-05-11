//
//  MSAppsViewController.h
//  OAuth2
//
//  Created by Trong_iOS on 5/10/17.
//  Copyright © 2017 Trong Dinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <OAuth2/OAuthRequestController.h>

@interface MSAppsViewController : UIViewController <OAuthRequestControllerDelegate, UITableViewDataSource, UITableViewDelegate> {
    
    __weak IBOutlet UITableView *tblView;
}

@property (nonatomic, strong) NSMutableArray *arr;

@end
