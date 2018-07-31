
Pod::Spec.new do |s|

s.name         = "FFmpeg-iOS"
s.version      = "0.0.1"
s.summary      = 'A video player.'
s.description  = 'https://github.com/yellowei/FFmpeg-iOS'
s.homepage     = 'https://github.com/yellowei/FFmpeg-iOS'
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "yellowei" => "hw0521@vip.qq.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => 'https://github.com/yellowei/FFmpeg-iOS.git', :tag => "#{s.version}" }
s.frameworks  = "UIKit", "Foundation"
s.requires_arc = true

s.vendored_frameworks = "FFmpeg/Decoder/FFmpeg.framework"
s.libraries = 'z', 'iconv', 'bz2'
s.source_files = 'FFmpeg/Decoder/*.{h,m}'

end
