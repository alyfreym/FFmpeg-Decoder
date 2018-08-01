
Pod::Spec.new do |s|

s.name         = "FFmpeg-Decoder"
s.version      = "0.3.0"
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

#pod工程的配置
#对于HEADER_SEARCH_PATHS，对将设置的字符串直接拷贝到xcode中，不会像上面source_files这样使用相对路径。
#所以，我在这里先获取当前路径，再设置进去。最后加**表示recursive，即循环查找子目录的意思
$dir = File.dirname(__FILE__)
$dir = $dir + "/FFmpeg/Decoder/**" 
s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => $dir, 'ENABLE_BITCODE' => 'YES', 'OTHER_LDFLAGS' => '$(inherited) -read_only_relocs suppress'}
s.user_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }

end
