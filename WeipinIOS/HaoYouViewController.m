//
//  HaoYouViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-24.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "HaoYouViewController.h"
#import "BaseViewController.h"
@interface HaoYouViewController ()

@end

@implementation HaoYouViewController

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
    self.title = @"好友";
}
-(NSArray *)initArray
{
    return [NSArray arrayWithObjects:@"好友1",@"好友2",@"好友3",@"好友4", nil];
}



@end
