#
# Be sure to run `pod lib lint KYSystemAlertView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KYSystemAlertView'
  s.version          = '0.1.0'
  s.summary          = '系统弹窗'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
链式调用，简化系统弹窗的使用
支持添加富文本 title 和 message
                       DESC

  s.homepage         = 'https://github.com/kangpengpeng/KYSystemAlertView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kangpengpeng' => '353327533@qq.com' }
  s.source           = { :git => 'https://github.com/kangpengpeng/KYSystemAlertView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'KYSystemAlertView/Classes/**/*'
  
  #pod 公有库，不做 二进制支持
  #if ENV['IS_SOURCE'] || ENV['KYTimer']
      s.source_files = 'KYSystemAlertView/Classes/**/*'
  #else
  #    s.source_files = 'KYSystemAlertView/Classes/**/*.h'
  #    s.vendored_frameworks = 'KYSystemAlertView/Products/KYSystemAlertViewLib.framework'
  #end
  
  # s.resource_bundles = {
  #   'KYSystemAlertView' => ['KYSystemAlertView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
