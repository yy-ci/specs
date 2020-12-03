Pod::Spec.new do |s|
	s.name         = "audioenginesdk"
	s.version      = "10.17.2"
	s.summary      = "Audio processing methods for yysdk."
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://sunclouds.com"

	s.author       = { "huyifeng" => "huyifeng@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/audioenginesdk/10.17.2/audioenginesdk.zip"}
	
	s.default_subspec = 'audioenginesdk'
	s.subspec 'audioenginesdk' do |ss|
		ss.dependency 'audiocodec', '10.2.0'
ss.dependency 'audiodsp', '1.3.4'
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audioenginesdk/libs" }
	    ss.source_files		= 'include/**/*.h','include/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libaudio_static.a'
	    ss.library = 'audio_static'
    end
    
    s.subspec 'yyaudiodynamicsdk' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.source_files		= 'include/**/*.h','include/*.h'
    	sy.header_mappings_dir = 'include'
    	sy.ios.vendored_frameworks = 'libs/audio_wrapper.framework'
    end

	s.subspec 'audioenginesdk_mac' do |ssm|
		ssm.dependency 'audiocodec/audiocodec_mac', '10.2.0'
ssm.dependency 'audiodsp/audiodsp_mac', '1.3.4'
	    ssm.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/audioenginesdk/libs" }
	    ssm.source_files		= 'include/**/*.h','include/*.h'
	    ssm.header_mappings_dir = 'include'
	    ssm.vendored_library = 'libs/libaudio_static-macOS.a'
	    ssm.library = 'audio_static-macOS'
    end
    
    s.subspec 'yyaudiodynamicsdk_mac' do |sym|
    	sym.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/audioenginesdk/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sym.source_files		= 'include/**/*.h','include/*.h'
    	sym.header_mappings_dir = 'include'
    	sym.osx.vendored_frameworks = 'libs/audio_wrapper_macOS.framework'
    end
end
