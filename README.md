# KYSystemAlertView

系统 Alert 弹窗的链式调用封装

[![CI Status](https://img.shields.io/travis/kangpengpeng/KYSystemAlertView.svg?style=flat)](https://travis-ci.org/kangpengpeng/KYSystemAlertView)
[![Version](https://img.shields.io/cocoapods/v/KYSystemAlertView.svg?style=flat)](https://cocoapods.org/pods/KYSystemAlertView)
[![License](https://img.shields.io/cocoapods/l/KYSystemAlertView.svg?style=flat)](https://cocoapods.org/pods/KYSystemAlertView)
[![Platform](https://img.shields.io/cocoapods/p/KYSystemAlertView.svg?style=flat)](https://cocoapods.org/pods/KYSystemAlertView)

## Example

系统弹窗的链式调用封装，简单好用
将系统 UIAlertController 进行链式语法封装

常用的简单弹窗：
```
    KYSystemAlertView.getInstance()
    .message(@"没有 title 的弹窗")
    .addAction([UIAlertAction actionWithTitle:@"知道了" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }])
    .show(self);
```

sheet 效果弹窗：
```
    // sheet 效果，请设置 preferredStyle，参数也是系统的枚举类型
    // .preferredStyle(UIAlertControllerStyleActionSheet)
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
```

也支持简单的富文本效果：
```
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
```


## Requirements

## Installation

KYSystemAlertView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KYSystemAlertView'
```

## Author

kangpengpeng, 353327533@qq.com

## License

KYSystemAlertView is available under the MIT license. See the LICENSE file for more info.
