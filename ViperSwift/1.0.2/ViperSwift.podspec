#
# Be sure to run `pod lib lint ViperSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ViperSwift'
  s.version          = '1.0.2'
  s.summary          = 'This is ViperSwift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "This is VIPER architecture Protocol"

  s.homepage         = 'https://github.com/Nahanwoong/ViperSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nahanwoong' => 'nibdevn@gmail.com' }
  s.source           = { :git => 'https://github.com/Nahanwoong/ViperSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.source_files = 'ViperSwift/Viper/**/*.swift'
  s.ios.dependency 'SVProgressHUD'
  
  # s.resource_bundles = {
  #   'ViperSwift' => ['ViperSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end