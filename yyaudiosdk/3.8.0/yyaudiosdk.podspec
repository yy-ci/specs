Pod::Spec.new do |s|
	s.name         = "yyaudiosdk"
	s.version      = "3.8.0"
	s.summary      = "Audio processing methods for yysdk."
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://sunclouds.com"

	s.author       = { "huyifeng" => "huyifeng@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyaudiosdk/3.8.0/yyaudiosdk.zip"}
	
	s.default_subspec = 'yyaudiosdk'
	s.subspec 'yyaudiosdk' do |ss|
		ss.dependency 'yyaudiocodec', '1.2.4'
ss.dependency 'yyaudiodsp', '1.1.0'
	    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyaudiosdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yyaudiosdk/libs" }
	    ss.source_files		= 'include/**/*.h','include/*.h'
	    ss.header_mappings_dir = 'include'
	    ss.vendored_library = 'libs/libyyaudiosdk.a', 'libs/libyyaudiosdk_AI_dummy.a'
	    ss.libraries = 'yyaudiosdk', 'yyaudiosdk_AI_dummy'
    end
    
    s.subspec 'yyaudiosdk_ai' do |ssai|
		ssai.dependency 'audiodenoise/audiodenoise-iOS', '3.0.7-dev'
ssai.dependency 'yyaudiocodec', '1.2.4'
ssai.dependency 'yyaudiodsp', '1.1.0'
	    ssai.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyaudiosdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yyaudiosdk/libs" }
	    ssai.source_files		= 'include/**/*.h','include/*.h'
	    ssai.header_mappings_dir = 'include'
	    ssai.vendored_library = 'libs/libyyaudiosdk.a', 'libs/libyyaudiosdk_AI_wrapper.a'
	    ssai.libraries = 'yyaudiosdk', 'yyaudiosdk_AI_wrapper'
    end
    
    s.subspec 'yyaudiodynamicsdk' do |sy|
    	sy.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyaudiosdk/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sy.source_files		= 'include/**/*.h','include/*.h'
    	sy.header_mappings_dir = 'include'
    	sy.ios.vendored_frameworks = 'libs/audio_wrapper.framework'
    end

	s.subspec 'yyaudiosdk_bd' do |ss_bd|
		ss_bd.dependency 'yyaudiocodec/yyaudiocodec_bd', '1.2.4'
ss_bd.dependency 'yyaudiodsp', '1.1.0'
	    ss_bd.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyaudiosdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yyaudiosdk/libs" }
	    ss_bd.source_files		= 'include/**/*.h','include/*.h'
	    ss_bd.header_mappings_dir = 'include'
	    ss_bd.vendored_library = 'libs/libyyaudiosdk.a', 'libs/libyyaudiosdk_AI_dummy.a'
	    ss_bd.libraries = 'yyaudiosdk', 'yyaudiosdk_AI_dummy'
    end

	s.subspec 'yyaudiosdk_bd_ai' do |ss_bd_ai|
		ss_bd_ai.dependency 'audiodenoise/audiodenoise-iOS', '3.0.7-dev'
	    ss_bd_ai.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyaudiosdk/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yyaudiosdk/libs" }
	    ss_bd_ai.source_files		= 'include/**/*.h','include/*.h'
	    ss_bd_ai.header_mappings_dir = 'include'
	    ss_bd_ai.vendored_library = 'libs/libyyaudiosdk.a', 'libs/libyyaudiosdk_AI_wrapper.a'
	    ss_bd_ai.libraries = 'yyaudiosdk', 'yyaudiosdk_AI_wrapper'
    end

end
