//
//  OralsInfoBean.m
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-8.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import "OralsInfoBean.h"
@implementation OralsInfoBean
- (id) init{

    if (self = [super init]) {
        _cellAddress        = @"地址";
        _cellJob            = @"职位";
        _cellNCompanyName   = @"公司名称";
        _cellOralId         = @"面试ID";
        _cellOralRst        = @"面试反馈";
        _cellSalary         = @"薪酬";
        _cellTime           = @"时间";
    }
    return self;
}

@end
