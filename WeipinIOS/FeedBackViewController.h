//
//  FeedBackViewController.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-1.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedBackViewController : UIViewController <UITextViewDelegate>
@property (retain, nonatomic) IBOutlet UIButton *commitButton;
@property (retain, nonatomic) IBOutlet UITextView *feedbackTextView;

@end
