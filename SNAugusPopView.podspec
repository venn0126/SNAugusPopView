#
# Be sure to run `pod lib lint SNAugusPopView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SNAugusPopView'
  s.version          = '0.5.1'
  s.summary          = 'A very lightweight popView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The popView support some directions of arrow,and show gradient and border effect.
                       DESC

  s.homepage         = 'https://github.com/venn0126/SNAugusPopView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'venn0126' => 'venn221@gmail.com' }
  s.source           = { :git => 'https://github.com/venn0126/SNAugusPopView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SNAugusPopView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SNAugusPopView' => ['SNAugusPopView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
