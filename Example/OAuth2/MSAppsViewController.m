//
//  MSAppsViewController.m
//  OAuth2
//
//  Created by Trong_iOS on 5/10/17.
//  Copyright © 2017 Trong Dinh. All rights reserved.
//

#import "MSAppsViewController.h"

@interface MSAppsViewController ()

@end

@implementation MSAppsViewController

#pragma mark - view life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _arr = [NSMutableArray array];
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Functions

- (void)loadData {
    _arr = [NSMutableArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"applications" ofType:@"plist"]];
    if (_arr) {
        [tblView reloadData];
    }
}

- (void)doAuth:(NSMutableDictionary *)dictService {
    OAuthRequestController *oauthController = [[OAuthRequestController alloc] initWithDict:dictService];
    oauthController.delegate = self;
    [self presentViewController:oauthController animated:YES completion:^{
        
    }];
    
}

#pragma mark - UITableViewDatasource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSDictionary *dict = [_arr objectAtIndex:indexPath.row];
    cell.textLabel.text = [dict objectForKey:@"name"];
    
    return cell;
}


#pragma mark - UITableViewDelegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self doAuth:[NSMutableDictionary dictionaryWithDictionary:[_arr objectAtIndex:indexPath.row]]];
}


#pragma mark - OAuthRequestControllerDelegate method

- (void)didAuthorized:(NSDictionary *)dictResponse {
    NSLog(@"%@", dictResponse);
}

- (void)didCancel {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
