#
# Be sure to run `pod lib lint PodTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodTest'
  s.version          = '0.1.6'
  s.summary          = '0.1.6  banben.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/303774813/PodTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '303774813' => 'wangchao7@yiche.com' }
  s.source           = { :git => 'https://github.com/303774813/PodTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.resource = 'PodTest/Assets/PodA.bundle'
  s.vendored_frameworks = 'PodTest/Assets/YKFramework.framework'

  s.ios.deployment_target = '9.0'

  s.source_files = 'PodTest/Classes/**/*'

  s.resource_bundles = {
     'PodTest' => ['PodTest/Assets/header4.jpeg'],
#     'PodTest1' => ['PodTest/Assets/PodA.bundle']
#     'PodTest3' => ['PodTest/Assets/YKFramework.framework']
   }
  s.vendored_libraries = 'PodTest/Classes/YKStaticLite/libYKStaticLite.a'
  #该目录下的.a静态库
  s.static_framework = true
  #指定pod加静态库标签

   s.resource = "PodTest/Assets/PodA.bundle"
   s.public_header_files = 'PodTest/Classes/YKStaticLite/*.h'
  s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 2.3'
end
