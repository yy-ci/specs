Pod::Spec.new do |s|
	s.name         = "yyaudiosdk_mac"
	s.version      = "3.5.0"
	s.summary      = "Audio processing methods for yysdk."
	s.license      = {:type => 'LGPL v2.1+'}
	s.homepage     = "http://sunclouds.com"

	s.author       = { "huyifeng" => "huyifeng@yy.com" }

	s.source       = {:http => "https://cirepo.bs2dl.yy.com/sdks/ios/yyaudiosdk_mac/3.5.0/yyaudiosdk_mac.zip"}
	
	s.default_subspec = 'yyaudiosdk_mac'
	s.subspec 'yyaudiosdk_mac' do |ssm|
		ssm.dependency 'yyaudiocodec_mac', '1.1.2'
ssm.dependency 'yyaudiodsp_mac', '1.0.0'
	    ssm.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyaudiosdk_mac/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yyaudiosdk_mac/libs" }
	    ssm.source_files		= 'include/**/*.h','include/*.h'
	    ssm.header_mappings_dir = 'include'
	    ssm.vendored_library = 'libs/libyyaudiosdk_mac.a', 'libs/libyyaudiosdk_AI_dummy.a'
	    ssm.library = 'yyaudiosdk_mac'
    end
    
    s.subspec 'yyaudiosdk_ai_mac' do |ssmai|
		ssmai.dependency 'audiodenoise/audiodenoise-macOS', '3.0.7'
ssmai.dependency 'yyaudiocodec_mac', '1.1.2'
ssmai.dependency 'yyaudiodsp_mac', '1.0.0'
	    ssmai.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyaudiosdk_mac/include', 'LIBRARY_SEARCH_PATHS' => "${PODS_ROOT}/yyaudiosdk_mac/libs" }
	    ssmai.source_files		= 'include/**/*.h','include/*.h'
	    ssmai.header_mappings_dir = 'include'
	    ssmai.vendored_library = 'libs/libyyaudiosdk_mac.a', 'libs/libyyaudiosdk_AI_wrapper.a'
	    ssmai.library = 'yyaudiosdk_mac'
    end
    
    s.subspec 'yyaudiodynamicsdk_mac' do |sym|
    	sym.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/yyaudiosdk_mac/include', 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks' }
    	sym.source_files		= 'include/**/*.h','include/*.h'
    	sym.header_mappings_dir = 'include'
    	sym.osx.vendored_frameworks = 'libs/audio_wrapper_mac.framework'
    end

end
