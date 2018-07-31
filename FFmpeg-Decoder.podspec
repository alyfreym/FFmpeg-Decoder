
Pod::Spec.new do |s|

s.name         = "FFmpeg-Decoder"
s.version      = "0.0.2"
s.summary      = 'A iOS Video&Audio Decoder.'
s.description  = 'https://github.com/yellowei/FFmpeg-Decoder'
s.homepage     = 'https://github.com/yellowei/FFmpeg-Decoder'
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "yellowei" => "hw0521@vip.qq.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => 'https://github.com/yellowei/FFmpeg-Decoder.git', :tag => "#{s.version}" }
s.frameworks  = "UIKit", "Foundation"
s.requires_arc = true
s.vendored_frameworks = "FFmpeg/Decoder/FFmpeg.framework"
s.libraries = 'z', 'iconv', 'bz2'
s.source_files = 'FFmpeg/Decoder/*.{h,m}'
s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(SRCROOT)/FFmpeg/Decoder' }

end
