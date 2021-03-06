Pod::Spec.new do |s|
	s.name         = 'thunder'
	s.version      = '2.7.0-820-dev'
	s.summary      = 'thunder'
	s.homepage     = 'http://www.yy.com'
	s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2005-2018 YY Inc., All rights reserved.
      LICENSE
    }
	s.author       = { 'yy' => 'yypm@yy.com' }
	s.source       = { :http => "http://cirepo.bs2dl.yy.com/sdks/ios/thunder/2.7.0-820-dev/thunder.zip" }
	
	s.default_subspec = 'thunderbolt'
	s.subspec 'thunderbolt' do |full|
		full.platform = :ios, '4.3'
		full.ios.deployment_target = '4.3'
		full.dependency 'argo', '3.0.3-5-dev'
full.dependency 'audioenginesdk', '10.12.0-dev.8'
full.dependency 'dwx265', '2.0.3'
full.dependency 'ffmpeg/ffmpeg-332-ios', '332.500.003'
full.dependency 'gslb', '1.0.10'
full.dependency 'ittiamhevc', '0500.6803.0'
full.dependency 'libyuv', '1194.5004.0'
full.dependency 'spidercrab', '1.2.0-7-dev'
full.dependency 'transengine/transengine-full', '2.7.0-442-dev'
full.dependency 'yyservicesdk/yyservicesdk', '3.2.0-dev.4'
full.dependency 'yyvideolib/yyvideolibstatic_nobeauty', '100.5.0-dev.37'
		full.requires_arc = true
		full.frameworks = 'VideoToolbox'
		full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
		full.source_files = 'include/thunderbolt/*.h'
		full.vendored_libraries = 'libs/libthunderbolt.a'
		full.library = 'thunderbolt'
	end
	
	s.subspec 'thunder' do |audio|
		audio.platform = :ios, '4.3'
		audio.ios.deployment_target = '4.3'
		audio.dependency 'argo', '3.0.3-5-dev'
audio.dependency 'audioenginesdk', '10.12.0-dev.8'
audio.dependency 'gslb', '1.0.10'
audio.dependency 'spidercrab', '1.2.0-7-dev'
audio.dependency 'transengine/transengine-audio', '2.7.0-442-dev'
audio.dependency 'yyservicesdk/yyservicesdk', '3.2.0-dev.4'
		audio.requires_arc = true
		audio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
		audio.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thunder/libs"' }
		audio.source_files = 'include/thunder/*.h'
		audio.vendored_libraries = 'libs/libthunder.a'
		audio.libraries = 'thunder'
    end

	s.subspec 'thunderboltdynamic' do |dyfull|
		dyfull.platform = :ios, '4.3'
		dyfull.ios.deployment_target = '4.3'
		
		dyfull.requires_arc = true
		dyfull.frameworks = 'VideoToolbox'
		dyfull.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
		dyfull.preserve_paths  = 'libs/thunderboltdynamic/thunderboltdynamic.framework'
		dyfull.ios.vendored_frameworks = 'libs/thunderboltdynamic.framework'
	end

	s.subspec 'thunderdynamic' do |dyaudio|
		dyaudio.platform = :ios, '4.3'
		dyaudio.ios.deployment_target = '4.3'
		
		dyaudio.requires_arc = true
		dyaudio.frameworks = 'AudioToolbox', 'CoreMedia', 'AVFoundation'
		dyaudio.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
		dyaudio.preserve_paths  = 'libs/thunderdynamic/thunderdynamic.framework'
		dyaudio.ios.vendored_frameworks = 'libs/thunderdynamic.framework'
	end
end
