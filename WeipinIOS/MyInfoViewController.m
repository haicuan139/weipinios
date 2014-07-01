//
//  MyInfoViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-27.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "MyInfoViewController.h"

@interface MyInfoViewController ()

@end

@implementation MyInfoViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    
    }
    return self;
}

-(void)hideKeyboard
{
    [self.nameTextField resignFirstResponder];
    [self.idCardTextField resignFirstResponder];
    [self.salaryTextField resignFirstResponder];
    [self.typeWorkTextField resignFirstResponder];
    [self.currentStateTextField resignFirstResponder];


}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self hideKeyboard];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"个人资料";
    // Do any additional setup after loading the view.
    self.nameTextField.delegate = self;
    self.idCardTextField.delegate = self;
    self.salaryTextField.delegate = self;
    self.typeWorkTextField.delegate = self;
    self.currentStateTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self hideKeyboard];
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc {
    [_nameTextField release];
    [_idCardTextField release];
    [_salaryTextField release];
    [_typeWorkTextField release];
    [_currentStateTextField release];
    [_phoneNameLable release];
    [_userIdLable release];
    [_userIdLable release];
    [_oralCountLable release];
    [_doneButton release];
    [super dealloc];
}
@end
