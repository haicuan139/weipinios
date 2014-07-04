//
//  PBaseViewController.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-3.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"
#import "URLHeader.h"
#import "ConfigKey.h"
#import "MyInfosBean.h"
@interface PBaseViewController : UIViewController <ASIHTTPRequestDelegate>
-(void)showMessageDialog:(NSString* )msg;
-(ASIHTTPRequest *) getNormalHttpRequest :(NSString *) url;
-(ASIFormDataRequest *) getPostHttpRequest : (NSString *)url;
-(void)pushViewControllerWithStorboardName:(NSString *)storyboardName sid:(NSString *)id;
-(void)pushViewControllerWithController:(UIViewController *)controller;
-(NSString *) getPhoneNumber;
-(NSDictionary *)getDicByNSString:(NSString *) string;
-(MyInfosBean *)getUserInfo;
-(BOOL)isEmpty:(NSString *)string;
@end
