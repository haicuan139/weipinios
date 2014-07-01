//
//  ZhiWeiViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-24.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "ZhiWeiViewController.h"
#import "RegViewController.h"
@interface ZhiWeiViewController ()

@end

@implementation ZhiWeiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"职位";
}
-(NSArray *)initArray
{
    return [NSArray arrayWithObjects:@"职位1",@"职位2",@"职位3",@"职位4", nil];
}
-(void)onItemClick:(NSInteger)index
{
    [self pushViewControllerWithStorboardName:@"reg" sid:@"regController"];

}
@end
