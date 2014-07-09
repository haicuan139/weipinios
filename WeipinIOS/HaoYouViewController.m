//
//  HaoYouViewController.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-6-24.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "HaoYouViewController.h"
#import "BaseViewController.h"
@interface HaoYouViewController ()

@end

@implementation HaoYouViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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

    UIImage *logo = [UIImage imageNamed:@"title_logo.png"];
    UIImageView *tLogoView = [[UIImageView alloc] init];
    tLogoView.frame = CGRectMake(0, 0, 30, 30);
    [tLogoView setImage:logo];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc ] initWithCustomView:tLogoView];
    [leftItem setImage:logo];
    self.navigationItem.leftBarButtonItem = leftItem;
    self.title = WSTRING_HAOYOU;
    UIButton *shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [shareButton setTitle:@"点击分享给好友" forState:UIControlStateNormal];
    shareButton.frame = CGRectMake(0, 0, 320, 40);
    shareButton.backgroundColor = [UIColor redColor];
    [shareButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shareButton];
    [shareButton release];

    
}
-(void)didSelectSocialPlatform:(NSString *)platformName withSocialData:(UMSocialData *)socialData{
    NSLog(@"点击了分享平台");
}

-(void)onClick{
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:@"53bcfc2056240bf0470623e7"
                                      shareText:@"你要分享的文字"
                                     shareImage:nil
                                shareToSnsNames:nil
                                       delegate:self];
}
-(void)didFinishGetUMSocialDataInViewController:(UMSocialResponseEntity *)response
{
    //根据`responseCode`得到发送结果,如果分享成功
    if(response.responseCode == UMSResponseCodeSuccess)
    {
        //得到分享到的微博平台名
        //分享成功.面试次数++
    }
}
@end
