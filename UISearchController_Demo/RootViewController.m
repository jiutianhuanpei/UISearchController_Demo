//
//  RootViewController.m
//  UISearchController_Demo
//
//  Created by 沈红榜 on 15/5/5.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "RootViewController.h"
#import "TableViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController {
    UISearchController *_searchVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.layer.contents = (__bridge id)([UIImage imageNamed:@"2"].CGImage);
    
    TableViewController *tableVC = [[TableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    _searchVC = [[UISearchController alloc] initWithSearchResultsController:tableVC];
    _searchVC.searchResultsUpdater = tableVC;
    _searchVC.hidesNavigationBarDuringPresentation = NO;
    
    [_searchVC.searchBar sizeToFit];
    
    
    
    
    self.navigationItem.titleView = _searchVC.searchBar;
    
    self.definesPresentationContext = YES;
    
    
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

@end
