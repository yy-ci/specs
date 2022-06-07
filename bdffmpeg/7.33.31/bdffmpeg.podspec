Pod::Spec.new do |s|
  s.name             = 'bdffmpeg'
  s.version          = '7.33.31'
  s.summary          = 'A short description of haokan ffmpeg.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 和手百宿主使用一样的版本。版本号：7.33.20.
                       DESC

  s.homepage         = 'https://github.com/jonz-tech/bdffmpeg'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jonz-tech' => 'zhuangchubin@yy.com' }
  s.source           = { :http => https://cirepo.bs2dl.yy.com/sdks/ios/bdffmpeg/7.33.31/bdffmpeg.zip }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.default_subspec='ffmpeg'
  
  s.subspec 'ffmpeg' do |ss|
     ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/bdffmpeg/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/bdffmpeg/" }
     ss.source_files = 'bdffmpeg/include/**/*.h','bdffmpeg/include/*.h'
     ss.public_header_files = 'bdffmpeg/include/**/*.h'
     ss.header_mappings_dir = 'bdffmpeg/include'
     ss.vendored_libraries = 'bdffmpeg/*.a'
     ss.libraries = 'ffmpeg'
  end
end

