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
        self.title =    WSTRING_ORAL;
    NSLog(@"面试加载");
}
-(NSArray *)initArray
{
    return  [[NSArray alloc] init];
}
-(void)onItemClick:(NSInteger)index
{
    [self pushViewControllerWithStorboardName:@"detail" sid:@"detail"];
}
@end
