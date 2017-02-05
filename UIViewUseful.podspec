#
# Be sure to run `pod lib lint UIViewUseful.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIViewUseful'
  s.version          = '0.1.1'
  s.summary          = 'A set of useful extensions'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
It's still beta version.
The library becomes better day after day.

This is set of extension of UIKit framework.
It includes extensions of:
  - UIView

For more details see wiki
                       DESC

  s.homepage         = 'https://github.com/NickKibish/UIViewUseful'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nick Kibish' => 'nick.kibish@gmail.com' }
  s.source           = { :git => 'https://github.com/NickKibish/UIViewUseful.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UIViewUseful/Extensions/**/*'
  
  # s.resource_bundles = {
  #   'UIViewUseful' => ['UIViewUseful/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
