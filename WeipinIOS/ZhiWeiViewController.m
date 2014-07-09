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
    self.title = WSTRING_ZHIWEI;
}
-(NSArray *)initArray
{
    return [[NSArray alloc] init];
}
@end
