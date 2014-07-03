//
//  OralDetailViewController.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-1.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ASIHTTPRequest.h"
@interface OralDetailViewController : UIViewController <ASIHTTPRequestDelegate>
@property (retain, nonatomic) IBOutlet UIButton *toudiButton;
- (IBAction)toudiButtonClick:(id)sender;

@end
