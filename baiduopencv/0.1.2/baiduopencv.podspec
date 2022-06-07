Pod::Spec.new do |s|
  s.name             = 'baiduopencv'
  s.version          = '0.1.2'
  s.summary          = 'A short description of baiduopencv.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
#   * opencv 版本：3.4.1

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jonz-tech/baiduopencv'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jonz-tech' => 'zhuangchubin@yy.com' }
  s.source           = { :http => https://cirepo.bs2dl.yy.com/sdks/ios/baiduopencv/0.1.2/opencv2.zip }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.default_subspec='baiduopencv'
  
  s.subspec 'baiduopencv' do |ss|
     ss.ios.vendored_frameworks  = 'opencv2/opencv2.framework'
     ss.vendored_libraries = 'opencv2/**/*.a'
  end
end

