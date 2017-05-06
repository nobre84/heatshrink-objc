Pod::Spec.new do |s|
  s.name             = 'heatshrink-objc'
  s.version          = '0.1.0'
  s.summary          = 'Port of heatshrink - A data compression/decompression library for embedded/real-time systems.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Small library to easily integrate heatshrink in iOS apps or libraries. Can be consumed by ObjC or Swift targets. Just provide a NSData to encode/decode and get back a encoded/decoded NSData. TBD: streaming mode.
                       DESC

  s.homepage         = 'https://github.com/nobre84/heatshrink-objc'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nobre84' => 'nobre84@gmail.com' }
  s.source           = { :git => 'https://github.com/nobre84/heatshrink-objc.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'heatshrink-objc/Classes/**/*'
  
  # s.resource_bundles = {
  #   'heatshrink-objc' => ['heatshrink-objc/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
