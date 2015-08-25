#
# Be sure to run `pod lib lint OAuth2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "OAuth2"
  s.version          = "0.1.7"
  s.summary          = "It's used for OAuth2 authorization."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "It's a library on iOS which is suitable for OAuth2. It supports authorization all websites which are using OAuth2 such as: smarthings, uber, fitbit, delivery, etc..."

  s.homepage         = "https://github.com/trongdth/OAuth2-for-iOS"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Trong Dinh" => "trongdth@gmail.com" }
  s.source           = { :git => "https://github.com/trongdth/OAuth2-for-iOS.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/trongdth'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'OAuth2' => ['Pod/Classes/OAuthRequestController.xib']
  }
  s.resources = ['Pod/Classes/OAuthRequestController.xib']

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
