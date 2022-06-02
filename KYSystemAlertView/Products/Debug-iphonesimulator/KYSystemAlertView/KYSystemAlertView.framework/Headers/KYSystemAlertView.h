//
//  KYSystemAlertView.h
//  MobileBank
//
//  Created by 康鹏鹏 on 2021/6/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KYSystemAlertView : NSObject

//+ (KYSystemAlertView * _Nonnull (^)(NSString * _Nonnull))getInstanceWithTag;

/// 获取实例
//+ (KYSystemAlertView *)getInstance;
+ (KYSystemAlertView * _Nonnull (^)(void))getInstance;

/// 设置提示框标题
- (KYSystemAlertView * _Nonnull (^)(NSString * _Nonnull))title;

/// 设置富文本标题
- (KYSystemAlertView * _Nonnull (^)(NSMutableAttributedString * _Nonnull))attributedTitle;

/// 设置提示框内容
- (KYSystemAlertView * _Nonnull (^)(NSString * _Nonnull))message;
/// 设置富文本提示框内容
- (KYSystemAlertView * _Nonnull (^)(NSMutableAttributedString * _Nonnull))attributedMessage;

/// 设置提示框风格
- (KYSystemAlertView * _Nonnull (^)(UIAlertControllerStyle))preferredStyle;

/// 添加响应按钮
- (KYSystemAlertView * _Nonnull (^)(UIAlertAction * _Nonnull))addAction;

/// 显示提示框(使用当前控制器推出)
//- (KYSystemAlertView * _Nonnull (^)(void))show;
/// 显示提示框，参数为控制器
- (KYSystemAlertView * _Nonnull (^)(UIViewController * _Nonnull))show;

/// 隐藏提示框(代码层面主动隐藏)
- (KYSystemAlertView * _Nonnull (^)(void))dismiss;
- (KYSystemAlertView * _Nonnull (^)(void))dismissWithAnimated:(BOOL)animated completion:(void (^ _Nullable)(void))completion;

@end

NS_ASSUME_NONNULL_END
