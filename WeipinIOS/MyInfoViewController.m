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

- (IBAction)doneButtonOnClick:(id)sender {
    //提交个人资料
    NSString* name = self.nameTextField.text;
    NSString* idCard = self.idCardTextField.text;
    NSString* salary = self.salaryTextField.text;
    NSString* workType = self.typeWorkTextField.text;
    NSString* currentState = self.currentStateTextField.text;
    _myinfos = [MyInfosBean alloc];
    _myinfos.name = name;
    _myinfos.idCard = idCard;
    _myinfos.salary = salary;
    _myinfos.workType = workType;
    _myinfos.currentState = currentState;
    if ((name.length == 0 && name.length > 10) || idCard.length != 18 || (salary.length == 0 && name.length > 15) ) {
        [self showMessageDialog:@"请检查内容是否合法!"];
    }else{
        NSLog(@"name:%@ -- id:%@ -- salary:%@" , name , idCard , salary);
        [self commitMyInfos:_myinfos];
    }
}

-(void)commitMyInfos:(MyInfosBean *)myinfos{
    if (myinfos != nil) {
      ASIFormDataRequest *req = [self getPostHttpRequest:[WURL_BASE_URL stringByAppendingString:WURL_COMMIT_USERINFO_HEADERIMAGE]];
        NSString* pm =[self getPhoneNumber];
        [req setPostValue:pm forKey:WPOST_PARAMS_TEL];
        [req setPostValue:myinfos.idCard forKey:WPOST_PARAMS_IDCARD];
        [req setPostValue:myinfos.salary forKey:WPOST_PARAMS_SALARY];
        [req setPostValue:myinfos.workType forKey:WPOST_PARAMS_WORK_TYPE];
        [req setPostValue:myinfos.currentState forKey:WPOST_PARAMS_USER_STATE];
        [req startAsynchronous];
    }
}
-(void)requestFinished:(ASIHTTPRequest *)request{
    [super requestFinished:request];
    NSString* response = [request responseString];
    NSDictionary *dic = [self getDicByNSString:response];
    NSString *code = [dic objectForKey:WPOST_REQUEST_CODE];
    if ([self isEmpty:code]) {
        [self showMessageDialog:@"注册失败"];
    }else{
        //保存用户ID
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        [ud setObject:code forKey:WCONFIGKEY_USERID];
        //保存用户资料
        [ud setObject:_myinfos.name forKey:WPOST_PARAMS_USERNAME];
        [ud setObject:_myinfos.idCard forKey:WPOST_PARAMS_IDCARD];
        [ud setObject:_myinfos.salary forKey:WPOST_PARAMS_SALARY];
        [ud setObject:_myinfos.workType forKey:WPOST_PARAMS_WORK_TYPE];
        [ud setObject:_myinfos.currentState forKey:WPOST_PARAMS_USER_STATE];
        [ud setBool:YES forKey:WKEY_SAVE_USERINFO];
    }
}
-(void)requestFailed:(ASIHTTPRequest *)request{
    [super requestFailed:request];
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
    //初始化手机号码
    NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    NSString *phone = [def objectForKey:WKEY_PHONE_NUMBER];
    NSString* ps = @"手机号码:";
    _phoneNameLable.text = [ps stringByAppendingString:phone];
    //初始化个人资料
    MyInfosBean *userInfo = [self getUserInfo];
    if (![self isEmpty:userInfo.name]) {
        //TODO:个人资料初始化
    }
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
    [_myinfos release];
    [super dealloc];
}
@end
