//
//  MyTabCellTableViewCell.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-8.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property (retain, nonatomic) IBOutlet UIButton *cellNumberButton;

@property (retain, nonatomic) IBOutlet UIButton *cellCompanyName;

@property (retain, nonatomic) IBOutlet UILabel *cellSalaryLable;

@property (retain, nonatomic) IBOutlet UILabel *cellJobLable;

@property (retain, nonatomic) IBOutlet UILabel *cellAddressLable;

@property (retain, nonatomic) IBOutlet UILabel *cellTime;

@end
