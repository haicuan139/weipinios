//
//  PBaseViewController.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-3.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
@interface PBaseViewController : UIViewController <ASIHTTPRequestDelegate>
-(void)showMessageDialog:(NSString *)title message:(NSString* )msg;
-(ASIHTTPRequest *) getHttpRequest :(NSString *) url;
@end
