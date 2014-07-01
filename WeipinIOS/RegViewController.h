//
//  RegViewController.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-26.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIView *sendCodeButton;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (retain, nonatomic) IBOutlet UITextField *checkCodeTextField;
@property (retain, nonatomic) IBOutlet UIButton *nextButton;

@end
