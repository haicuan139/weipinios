//
//  MyInfoViewController.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-27.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyInfoViewController : UIViewController <UITextFieldDelegate>

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;

@property (retain, nonatomic) IBOutlet UITextField *idCardTextField;
@property (retain, nonatomic) IBOutlet UITextField *salaryTextField;
@property (retain, nonatomic) IBOutlet UITextField *typeWorkTextField;
@property (retain, nonatomic) IBOutlet UITextField *currentStateTextField;
@property (retain, nonatomic) IBOutlet UILabel *phoneNameLable;

@property (retain, nonatomic) IBOutlet UILabel *userIdLable;
@property (retain, nonatomic) IBOutlet UILabel *oralCountLable;
@property (retain, nonatomic) IBOutlet UIButton *doneButton;


-(void)hideKeyboard;

@end
