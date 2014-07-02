//
//  BaseViewController.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-26.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGORefreshTableHeaderView.h"

@interface BaseViewController : UIViewController <UITableViewDataSource , UITableViewDelegate , EGORefreshTableHeaderDelegate>
{
        UITableView *tableView;
        BOOL _reloading;
        NSArray *array;
        EGORefreshTableHeaderView *refreshTableHeaderView;

}

//-(UITableViewCell *)tableView:(UITableView *)tableViewT cellForRowAtIndexPath:(NSIndexPath *)indexPath
-(void)onItemClick:(NSInteger)index;
-(UITableViewCell *)initCellView:(NSUInteger)index;
-(NSArray *)initArray;
-(void)reloadTableViewDataSource;
-(void)doneLoadingTableViewData;
-(void)pushViewControllerWithStorboardName:(NSString *)storyboardName sid:(NSString *)id;
//-(void) setKids: (NSString *)myOldestKidName secondKid: (NSString *) mySecondOldestKidName thirdKid: (NSString *) myThirdOldestKidName;
-(void)pushViewControllerWithController:(UIViewController *)controller;
-(void)onRightBarItemClick;
@end
