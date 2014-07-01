//
//  RegViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-26.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "RegViewController.h"

@interface RegViewController ()

@end

@implementation RegViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
    self.title = @"验证";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    
//}


- (void)dealloc {
    [_sendCodeButton release];
    [_phoneNumberTextField release];
    [_checkCodeTextField release];
    [_nextButton release];
    [super dealloc];
}
@end
