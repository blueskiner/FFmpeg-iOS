#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint FFmpeg-iOS.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'FFmpeg-iOS'
  s.version          = '0.0.1'
  s.summary          = 'GZNSCY FFmpeg-iOS private library.'
  s.description      = <<-DESC
GZNSCY FFmpeg-iOS private library.
                       DESC

  s.homepage         = 'https://www.gznscy.com'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'FFmpeg-iOS' => 'maileizhi@gmail.com' }
  s.source           = { :git => 'https://github.com/blueskiner/FFmpeg-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.source_files        = 'FFmpeg-iOS/include/**/*.h'
  s.public_header_files = 'FFmpeg-iOS/include/**/*.h'
  s.header_mappings_dir = 'FFmpeg-iOS/include'

  s.platform = :ios, '12.0'
  s.framework = 'Metal', 'MetalKit'

  s.vendored_libraries = 'FFmpeg-iOS/lib/*.a'

  s.libraries = 'bz2', 'iconv', 'z'
  s.frameworks = 'AudioToolbox', 'CoreMedia', 'VideoToolbox', 'AVFoundation'
end
