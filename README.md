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
## 有一个问题是:
只有在第一层(第一个加入UISearchController的那层), _searchVC.searchBar 可以响应操作, 后面的页面再加入UISearchController, _searchVC.searchBar 不再能响应用户操作