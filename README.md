# UISearchController_Demo
UISearchController_Demo
```object
    TableViewController *tableVC = [[TableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    _searchVC = [[UISearchController alloc] initWithSearchResultsController:tableVC];
    _searchVC.searchResultsUpdater = tableVC;
    _searchVC.hidesNavigationBarDuringPresentation = NO;
    
    /**
     *  适应屏幕大小
     */
    [_searchVC.searchBar sizeToFit];
    self.navigationItem.titleView = _searchVC.searchBar;
    
    self.definesPresentationContext = YES;
    
```
