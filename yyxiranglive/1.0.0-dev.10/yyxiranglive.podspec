Pod::Spec.new do |s|
	s.name         = 'yyxiranglive'
	s.version      = '1.0.0-dev.10'
	s.summary      = 'yyxiranglive'
	s.description  = 'YY SDK for baidud xirang'
	s.homepage     = 'http://www.yy.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.platform     = :ios, "9.0"
	s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyxiranglive/1.0.0-dev.10/yyxiranglive.zip" }
	
	s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/yyxiranglive/src"}


	s.default_subspec = 'yyxiranglib'
	
	s.subspec 'yyxiranglib' do |ss|
		ss.vendored_libraries = 'src/**/*.a'
		ss.vendored_frameworks = 'src/*.framework'
		ss.resource = "resource/**/*.bundle",'resource/**/*.{storyboard,xib}'
		ss.source_files = 'include/**/*.{h,m}','include/**/*.framework/**/*.h'
		ss.public_header_files ='include/**/*.h'
		ss.frameworks = 'VideoToolBox','AudioToolBox','AVFoundation'
  		ss.libraries = 'iconv','resolv'
	end
	
	
end
	
