//
//  BaseViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-26.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}

-(BOOL)egoRefreshTableHeaderDataSourceIsLoading:(EGORefreshTableHeaderView *)view
{
    return _reloading;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    array = [self initArray];
    [array retain];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    BOOL noIsFirst = [ud boolForKey:WKEY_FIRST_RUN_KEY];
    BOOL isCheck = [ud boolForKey:WKEY_CHECK_STATE_BOOL];
    BOOL isSaveUserInfo = [ud boolForKey:WKEY_SAVE_USERINFO];
    if (!noIsFirst || !isCheck) {
        //开启验证
        [ud setBool:YES forKey:WKEY_FIRST_RUN_KEY];
        [self pushViewControllerWithStorboardName:@"reg" sid:@"regController"];
    }else if(!isSaveUserInfo){
            
        [self pushViewControllerWithStorboardName:@"myinfos" sid:@"myinfos"];
    }
    //初始化TabView
//
    NSString *path = [[NSBundle mainBundle] pathForResource:@"more_icon" ofType:@"png"];
    UIImage* more = [[UIImage alloc ] initWithContentsOfFile:path];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithImage:more style:UIBarButtonItemStylePlain target:self action:@selector(onRightBarItemClick)];
    [rightItem setTintColor:[UIColor whiteColor]];
    UIImage *logo = [UIImage imageNamed:@"title_logo.png"];
    UIImageView *tLogoView = [[UIImageView alloc] init];
    tLogoView.frame = CGRectMake(0, 0, 30, 30);
    [tLogoView setImage:logo];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc ] initWithCustomView:tLogoView];
    [leftItem setImage:logo];
    self.navigationItem.rightBarButtonItem = rightItem;
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem release];
    [rightItem release];
    [tLogoView release];
    tableView = [[UITableView alloc ] init];
    tableView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    tableView.delegate = self;
    tableView.dataSource = self;
    if (refreshTableHeaderView == nil) {
        EGORefreshTableHeaderView* view = [[EGORefreshTableHeaderView alloc]initWithFrame:CGRectMake(0.0, 0.0 - tableView.frame.size.height, tableView.frame.size.width, tableView.frame.size.height)];
        view.delegate = self;
        refreshTableHeaderView = view;
        [tableView addSubview:view];


        [view release];
    }
    
    [self.view addSubview:tableView];
//    [[self.tabBarController.tabBar.items objectAtIndex:0] setTitle:@"傻逼"];
        
}

-(NSArray *)initArray
{
  return   [NSArray arrayWithObjects:@"cell", nil];
}
-(void)doneLoadingTableViewData
{
    _reloading = NO;
    [refreshTableHeaderView egoRefreshScrollViewDataSourceDidFinishedLoading:tableView];
}
-(void)reloadTableViewDataSource
{
    _reloading = YES;
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"scrollViewDidScroll");
    [refreshTableHeaderView egoRefreshScrollViewDidScroll:scrollView];
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [refreshTableHeaderView egoRefreshScrollViewDidEndDragging:scrollView];
}
-(void) egoRefreshTableHeaderDidTriggerRefresh:(EGORefreshTableHeaderView *)view
{
    NSLog(@"egoRefreshTableHeaderDidTriggerRefresh");
    [self reloadTableViewDataSource];
    [self performSelector:@selector(doneLoadingTableViewData) withObject:nil afterDelay:3.0];
}
-(NSDate *)egoRefreshTableHeaderDataSourceLastUpdated:(EGORefreshTableHeaderView *)view
{
    NSLog(@"egoRefreshTableHeaderDataSourceLastUpdated");
    return [NSDate date];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [array count];
}
-(UITableViewCell *)tableView:(UITableView *)tableViewT cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger index = [indexPath row];
    
    return [self initCellView:index];
    
}
-(UITableViewCell *)initCellView:(NSUInteger)index
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *tabCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(tabCell == nil){
        tabCell = [[UITableViewCell alloc ] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[CellIdentifier autorelease]];
    }
    
    NSString* str = [array objectAtIndex:index];
    tabCell.textLabel.text = str;
    return tabCell;
}
-(void)onItemClick:(NSInteger)index
{



}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    NSUInteger index = [indexPath row];
    [self onItemClick:index];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    tableView = nil;
    array = nil;
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    [super dealloc];
    tableView = nil;
    array = nil;
}

-(void)pushViewControllerWithStorboardName:(NSString *)storyboardName sid:(NSString *)id
{
    UIStoryboard* st = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *controller = [st instantiateViewControllerWithIdentifier:id];
    [self pushViewControllerWithController:controller];
    
}
-(void)pushViewControllerWithController:(UIViewController *)controller
{
    [self.navigationController pushViewController:controller animated:YES];
}
-(void)onRightBarItemClick
{
    [self pushViewControllerWithStorboardName:@"more" sid:@"more"];
//            [self pushViewControllerWithStorboardName:@"reg" sid:@"regController"];
}

@end
