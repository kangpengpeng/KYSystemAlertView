//
//  KYSystemAlertView.m
//  MobileBank
//
//  Created by 康鹏鹏 on 2021/6/22.
//

#import "KYSystemAlertView.h"

@interface KYSystemAlertView()
@property (nonatomic, strong)UIAlertController *alertController;
@end

@implementation KYSystemAlertView

- (instancetype)init {
    self = [super init];
    if (self) {
        _alertController = [[UIAlertController alloc] init];
        // 给title一个默认值，否则在没有设置title的情况下，message默认会加粗
        _alertController.title = @"";
        [_alertController setValue:@(UIAlertControllerStyleAlert) forKey:@"preferredStyle"];
    }
    return self;
}


+ (KYSystemAlertView * _Nonnull (^)(void))getInstance {
    __weak typeof(self) weakSelf = self;
    return ^id() {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        return [[strongSelf alloc]init];
    };
}


- (KYSystemAlertView * _Nonnull (^)(NSString * _Nonnull))title {
    __weak typeof(self) weakSelf = self;
    return ^id(NSString *title) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.alertController setTitle:title];
        return strongSelf;
    };
}

- (KYSystemAlertView * _Nonnull (^)(NSMutableAttributedString * _Nonnull))attributedTitle {
    __weak typeof(self) weakSelf = self;
    return ^id(NSMutableAttributedString *attributedTitle) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.alertController setValue:attributedTitle forKey:@"attributedTitle"];
        return strongSelf;
    };
}

- (KYSystemAlertView * _Nonnull (^)(NSMutableAttributedString * _Nonnull))attributedMessage {
    __weak typeof(self) weakSelf = self;
    return ^id(NSMutableAttributedString *attributedMessage) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.alertController setValue:attributedMessage forKey:@"attributedMessage"];
        return strongSelf;
    };
}

- (KYSystemAlertView * _Nonnull (^)(NSString * _Nonnull))message {
    __weak typeof(self) weakSelf = self;
    return ^id(NSString *message) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.alertController setMessage:message];
        return strongSelf;
    };
}

- (KYSystemAlertView * _Nonnull (^)(UIAlertControllerStyle))preferredStyle {
    __weak typeof(self) weakSelf = self;
    return ^id(UIAlertControllerStyle preferredStyle) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.alertController setValue:@(preferredStyle) forKey:@"preferredStyle"];
        return strongSelf;
    };
}


- (KYSystemAlertView * _Nonnull (^)(UIAlertAction * _Nonnull))addAction {
    __weak typeof(self) weakSelf = self;
    return ^id(UIAlertAction *addAction) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.alertController addAction:addAction];
        return strongSelf;
    };
}

//- (KYSystemAlertView * _Nonnull (^)(void))show {
//    __weak typeof(self) weakSelf = self;
//    return ^id() {
//        __strong typeof(weakSelf) strongSelf = weakSelf;
//        UIViewController *currController = [KYSystemAlertView currentViewController];
//        [currController presentViewController:strongSelf.alertController animated:YES completion:nil];
//        return strongSelf;
//    };
//}

- (KYSystemAlertView * _Nonnull (^)(UIViewController * _Nonnull))show {
    __weak typeof(self) weakSelf = self;
    return ^id(UIViewController *controller) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [controller presentViewController:strongSelf.alertController animated:YES completion:nil];
        return strongSelf;
    };
}

- (KYSystemAlertView * _Nonnull (^)(void))dismiss {
    /*
    __weak typeof(self) weakSelf = self;
    return ^id() {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.alertController dismissViewControllerAnimated:YES completion:nil];
        return strongSelf;
    };
     */
    return [self dismissWithAnimated:YES completion:nil];
}

- (KYSystemAlertView * _Nonnull (^)(void))dismissWithAnimated:(BOOL)animated completion:(void (^)(void))completion {
    __weak typeof(self) weakSelf = self;
    return ^id() {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf.alertController dismissViewControllerAnimated:animated completion:completion];
        return strongSelf;
    };
}


#pragma mark: - 工具方法
//获取手机当前显示的ViewController
/*
+ (UIViewController*)currentViewController {
    UIViewController* vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (1) {
        if ([vc isKindOfClass:[UITabBarController class]]) {
            vc = ((UITabBarController*)vc).selectedViewController;
        }
        if ([vc isKindOfClass:[UINavigationController class]]) {
            vc = ((UINavigationController*)vc).visibleViewController;
        }
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        }else{
            break;
        }
    }
    return vc;
}
 */




@end
