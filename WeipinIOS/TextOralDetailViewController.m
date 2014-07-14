//
//  TextOralDetailViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-14.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "TextOralDetailViewController.h"
#import "HaoYouViewController.h"
@interface TextOralDetailViewController ()

@end

@implementation TextOralDetailViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
 
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    MJAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    OralsInfoBean *oralInfo = appDelegate.oralInfos;
    MyInfosBean *info = [self getUserInfo];
    self.title = @"详细";
    NSString *t = @"尊敬的";
    t = [t stringByAppendingString:info.name];
    t =[t stringByAppendingString:@":\n"];
    t = [t stringByAppendingString:@"我们很高兴的通知您，您已通过："];
    t = [t stringByAppendingString:oralInfo.cellNCompanyName];
    t = [t stringByAppendingString:@"公司"];
    t = [t stringByAppendingString:oralInfo.cellJob];
    t = [t stringByAppendingString:@"职位"];
    t = [t stringByAppendingString:@"税前月薪"];
    t = [t stringByAppendingString:oralInfo.cellSalary];
    t = [t stringByAppendingString:@"元的面试,请您保持手机通信畅通，我们会在48小时内与您联系并确认入职时间。\n长按本信息分享您的喜悦，让更多好友找工作只需要动动手。"];
    _contentTextView.text = t;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
 
}

- (void)dealloc {
    [_contentTextView release];
    [super dealloc];
}
@end
