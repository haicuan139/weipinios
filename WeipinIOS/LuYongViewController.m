//
//  LuYongViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-24.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "LuYongViewController.h"

@interface LuYongViewController ()

@end

@implementation LuYongViewController

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
        self.title = @"录用";
}

-(NSArray *)initArray
{
    return  [NSArray arrayWithObjects:@"录用1",@"录用2",@"录用3",@"录用4",@"录用5", nil];
}

@end
