Pod::Spec.new do |s|
  s.name             = 'heatshrink-objc'
  s.version          = '0.1.0'
  s.summary          = 'Port of heatshrink - A data compression/decompression library for embedded/real-time systems.'

  s.description      = <<-DESC
Small library to easily integrate heatshrink in iOS apps or libraries. Can be consumed by ObjC or Swift targets. Just provide a NSData to encode/decode and get back a encoded/decoded NSData. TBD: streaming mode.
                       DESC

  s.homepage         = 'https://github.com/nobre84/heatshrink-objc'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nobre84' => 'nobre84@gmail.com' }
  s.source           = { :git => 'https://github.com/nobre84/heatshrink-objc.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/nobre84'

  s.ios.deployment_target = '8.0'

  s.source_files = 'heatshrink-objc/Classes/**/*'

end
