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
-(void)showMessageDialog:(NSString *)msg
{
    UIAlertView *alert = [[UIAlertView alloc ] initWithTitle:@"提示" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil ];
    [alert show];
    
}
-(ASIHTTPRequest *)getNormalHttpRequest : (NSString *)url
{
    NSURL *myurl = [NSURL URLWithString:url];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:myurl];

    request.delegate = self;
    return request;
}
-(ASIFormDataRequest *) getPostHttpRequest : (NSString *)url{
    NSURL *myurl = [NSURL URLWithString:url];
    ASIFormDataRequest* request = [ASIFormDataRequest requestWithURL:myurl];
    request.delegate = self;
    return request;
}
-(void)requestFinished:(ASIHTTPRequest *)request{
    [[UIApplication sharedApplication ] setStatusBarHidden:YES];
}

-(void)requestStarted:(ASIHTTPRequest *)request
{
    [[UIApplication sharedApplication ] setNetworkActivityIndicatorVisible:YES];
}
-(void)requestFailed:(ASIHTTPRequest *)request
{
    [[UIApplication sharedApplication ] setStatusBarHidden:YES];
    [self showMessageDialog:@"网络连接错误"];
    NSError *error = [request error];
    NSLog(@"code:%li -- des:%@",(long)error.code , error.description);
}
-(void)pushViewControllerWithStorboardName:(NSString *)storyboardName sid:(NSString *)id
{
    UIStoryboard* st = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *controller = [st instantiateViewControllerWithIdentifier:id];
    [self pushViewControllerWithController:controller];
    
}
-(void)pushViewControllerWithController:(UIViewController *)controller
{
    [self.navigationController pushViewController:controller animated:YES];
}
-(NSString *)getPhoneNumber{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    return  [ud objectForKey:WKEY_PHONE_NUMBER];
}
-(NSDictionary *)getDicByNSString:(NSString *) string{
    NSData* data = [string dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    return dic;
}
-(BOOL)isEmpty:(NSString *)string{
    if (string == nil || string.length == 0) {
        return YES;
    }
    return NO;
}
-(MyInfosBean *)getUserInfo{
    MyInfosBean * infos = [MyInfosBean alloc];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    infos.name    = [ud objectForKey:WPOST_PARAMS_USERNAME];
    infos.userId = [ud objectForKey :WCONFIGKEY_USERID];
    infos.idCard = [ud objectForKey :WPOST_PARAMS_IDCARD];
    infos.salary = [ud objectForKey :WPOST_PARAMS_SALARY];
    infos.workType = [ud objectForKey :WPOST_PARAMS_WORK_TYPE];
    infos.currentState = [ud objectForKey :WPOST_PARAMS_USER_STATE];
    return infos;
}
@end
