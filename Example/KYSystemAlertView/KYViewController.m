//
//  KYViewController.m
//  KYSystemAlertView
//
//  Created by kangpengpeng on 12/08/2021.
//  Copyright (c) 2021 kangpengpeng. All rights reserved.
//

#import "KYViewController.h"
#import <KYSystemAlertView/KYSystemAlertView.h>

@interface KYViewController ()

@end

@implementation KYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUI];
}

- (void)setUI {
    NSArray *listArr = @[@"普通弹窗提示",
                         @"没有title弹窗",
                         @"sheet弹窗",
                         @"富文本title",
                         @"富文本message"];
    for (int i = 0; i < listArr.count; i++) {
        UIButton *button = [[UIButton alloc] init];
        CGFloat btnW = 180;
        CGFloat btnH = 50;
        CGFloat btnY = 20 + i*(btnH+25);
        CGRect frame = CGRectMake(20, btnY, btnW, btnH);
        button.frame = frame;
        button.tag = 100 + i;
        button.backgroundColor = [UIColor lightGrayColor];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setTitle:listArr[i] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(alertButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
}

- (void)alertButtonAction:(UIButton *)sender {
    NSInteger idx = sender.tag - 100;
    NSString *funcName = [NSString stringWithFormat:@"alertTest_%ld", (long)idx];
    [self performSelector:NSSelectorFromString(funcName)];
}


- (void)alertTest_0 {
    KYSystemAlertView.getInstance()
    .title(@"标题")
    .message(@"一个很普通的弹窗")
    .addAction([UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .addAction([UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .show(self);
}

- (void)alertTest_1 {
    KYSystemAlertView.getInstance()
    .message(@"没有 title 的弹窗")
    .addAction([UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .show(self);
}

- (void)alertTest_2 {
    KYSystemAlertView.getInstance()
    .message(@"一个 sheet 弹窗") // 可去除
    .preferredStyle(UIAlertControllerStyleActionSheet)
    .addAction([UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .addAction([UIAlertAction actionWithTitle:@"随便吧" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .addAction([UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .show(self);
}


- (void)alertTest_3 {
    // 富文本推荐使用我的富文本工具类 KYAttributeText
    // git 地址 'https://github.com/kangpengpeng/KYAttributeText.git'
    NSMutableAttributedString *attributedTitle = [[NSMutableAttributedString alloc] initWithString:@"我是富文本"];
    [attributedTitle addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [attributedTitle addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:NSMakeRange(0, 2)];
    
    KYSystemAlertView.getInstance()
    .attributedTitle(attributedTitle)
    .message(@"设置富文本 title 的弹窗")
    .addAction([UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .addAction([UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .show(self);
}

- (void)alertTest_4 {
    NSMutableAttributedString *attributedMessage = [[NSMutableAttributedString alloc] initWithString:@"我是一个富文本内容弹窗，这个带下划线"];
    [attributedMessage addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [attributedMessage addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:NSMakeRange(0, 2)];
    [attributedMessage addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:22] range:NSMakeRange(2, 10)];
    [attributedMessage addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(2, 10)];

    [attributedMessage addAttribute:NSUnderlineStyleAttributeName value:
      [NSNumber numberWithInteger:NSUnderlineStyleSingle] range:[[attributedMessage string] rangeOfString:@"这个带下划线"]];
    
    KYSystemAlertView.getInstance()
    .title(@"标题")
    .attributedMessage(attributedMessage)
    .addAction([UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .addAction([UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .show(self);
}

@end
