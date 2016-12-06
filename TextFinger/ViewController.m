//
//  ViewController.m
//  TextFinger
//
//  Created by 东 on 16/9/30.
//  Copyright © 2016年 东. All rights reserved.
//

#import "ViewController.h"
#import "LocalAuthentication/LocalAuthentication.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // 实例化
//    LAContext *lac = [[LAContext alloc]init];
//    // 判断设备是否支持指纹识别
//    BOOL isSupport = [lac canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:NULL];
//    if(!isSupport)
//    {
//        NSLog(@"不支持！");
//        return;
//    }
//    [lac evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:@"请按手印" reply:^(BOOL success, NSError *error) {
//        if(success)
//        {
//            NSLog(@"成功后，处理接下来的逻辑");
//        }
//    }];
//    NSDictionary *dict = [NSDictionary dictionary];
//    NSString *arry = nil;
//    NSString *temp = [NSString stringWithFormat:@"%@",[dict objectForKey:@"123"]];
////    temp = [[NSString alloc] initWithString:arry[0]];
//    NSLog(@"==%@",temp);
    
    UILabel *dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 300, 40)];
    dateLabel.text = @"The date today is January 1st, 1999";
    CGSize maximumSize = CGSizeMake(300, 9999);
    NSString *dateString = @"The date today is January 1st, 1999";
    UIFont *dateFont = [UIFont fontWithName:@"Helvetica" size:14];
    CGSize dateStringSize = [dateString sizeWithFont:dateFont constrainedToSize:maximumSize lineBreakMode:dateLabel.lineBreakMode];
    CGRect dateFrame = CGRectMake(100, 100, 300, dateStringSize.height);
    dateLabel.frame = dateFrame;
    dateLabel.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:dateLabel];
    NSLog(@";");
    NSLog(@"test reset");
    NSLog(@"%f",dateStringSize.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
