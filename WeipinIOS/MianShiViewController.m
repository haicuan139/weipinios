//
//  MianShiViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-24.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "MianShiViewController.h"

@interface MianShiViewController ()

@end

@implementation MianShiViewController

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
        self.title = @"面试";
}
-(NSArray *)initArray
{
    return  [NSArray arrayWithObjects:@"面试1",@"面试2",@"面试3",@"面试4",@"面试5",@"面试6", nil];
}
-(void)onItemClick:(NSInteger)index
{
    [self pushViewControllerWithStorboardName:@"detail" sid:@"detail"];
}
@end
