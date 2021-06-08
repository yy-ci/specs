Pod::Spec.new do |s|
  s.name         = 'yyaudiodsp_mac'
  s.version      = '1.1.0'
  s.summary      = 'yyaudiodsp_mac'
  s.homepage     = 'https://www.jocloud.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright jocloud Inc., All rights reserved.
      LICENSE
    }
  s.author       = { 'sujiachang' => 'sujiachang@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyaudiodsp_mac/1.1.0/yyaudiodsp_mac.zip" }

  s.default_subspec = 'yyaudiodsp_mac'
  s.subspec 'yyaudiodsp_mac' do |full|
    
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/yyaudiodsp_mac/libs"' }
    full.source_files = 'include/**/*.h','include/*.h'
    full.vendored_libraries = 'libs/libyyaudiodsp_mac.a'
    full.library = 'yyaudiodsp_mac'
  end

end
