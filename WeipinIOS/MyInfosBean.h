//
//  MyInfosBean.h
//  WeipinIOS
//
//  Created by haicuan139 on 14-7-4.
//  Copyright (c) 2014年 haicuan139. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyInfosBean : NSObject
//NSString* name = self.nameTextField.text;
//NSString* idCard = self.idCardTextField.text;
//NSString* salary = self.salaryTextField.text;
//NSString* workType = self.typeWorkTextField.text;
//NSString* currentState = self.currentStateTextField.text;
@property (retain, nonatomic) NSString* name;
@property (retain, nonatomic) NSString* idCard;
@property (retain, nonatomic) NSString* salary;
@property (retain, nonatomic) NSString* workType;
@property (retain, nonatomic) NSString* currentState;
@property (retain, nonatomic) NSString* userId;
@end
