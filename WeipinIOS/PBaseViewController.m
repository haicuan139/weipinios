//
//  PBaseViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-3.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "PBaseViewController.h"

@implementation PBaseViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)showMessageDialog:(NSString *)title message:(NSString *)msg
{
    UIAlertView *alert = [[UIAlertView alloc ] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil ];
    [alert show];
    
}
-(ASIHTTPRequest *)getHttpRequest : (NSString *)url
{
    NSURL *myurl = [NSURL URLWithString:url];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:myurl];
    request.delegate = self;
    return request;
}
@end
