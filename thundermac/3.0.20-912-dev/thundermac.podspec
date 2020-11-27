Pod::Spec.new do |s|
  s.name         = 'thundermac'
  s.version      = '3.0.20-912-dev'
  s.summary      = 'thundermac'
  s.homepage     = 'https://aivacom.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2020, All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'yypm@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/thundermac/3.0.20-912-dev/thundermac.zip" }
  
  s.default_subspec = 'thunderboltmac'
  
  s.subspec 'thunderboltmac' do |full|
    full.platform = :osx, '10.9'
    full.osx.deployment_target = '10.9'
    full.dependency 'argo/argomac', '~> 3.1.0'
full.dependency 'audioenginesdk/audioenginesdk_mac', '10.16.200'
full.dependency 'hydra/lite_macOS', '1.1.23-201-dev'
full.dependency 'jobase/jobase-mac', '1.0.2'
full.dependency 'jodns/jodns-mac', '1.0.6-52-dev'
full.dependency 'jolog/jolog-lite-macOS', '1.1.31-123-dev'
full.dependency 'transengine/transengine-full-macOS', '3.0.21'
full.dependency 'yyvideolibmac', '1.0.26'
    full.requires_arc = true
    full.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    full.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thundermac/libs"' }
    full.source_files = 'include/thunderboltmac/*.h'
    full.vendored_libraries = 'libs/libthunderboltmac.a'
    full.libraries = 'z', 'thunderboltmac'
  end
  
  s.subspec 'thunderboltmacai' do |fullai|
    fullai.platform = :osx, '10.9'
    fullai.osx.deployment_target = '10.9'
    
    fullai.requires_arc = true
    fullai.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    fullai.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thundermac/libs"' }
    fullai.source_files = 'include/thunderboltmac/*.h'
    fullai.vendored_libraries = 'libs/libthunderboltmac.a'
    fullai.libraries = 'z', 'thunderboltmac'
  end

  s.subspec 'thunderboltyymac' do |fullyy|
    fullyy.platform = :osx, '10.9'
    fullyy.osx.deployment_target = '10.9'
    fullyy.dependency 'argo/argomac', '~> 3.1.0'
fullyy.dependency 'audioenginesdk/audioenginesdk_mac', '10.16.200'
fullyy.dependency 'hydra/lite_macOS', '1.1.23-201-dev'
fullyy.dependency 'jobase/jobase-mac', '1.0.2'
fullyy.dependency 'jodns/jodns-mac', '1.0.6-52-dev'
fullyy.dependency 'jolog/jolog-lite-macOS', '1.1.31-123-dev'
fullyy.dependency 'transengine/transengine-full-macOS', '3.0.21'
fullyy.dependency 'yyvideolibmac', '1.0.26'
    fullyy.requires_arc = true
    fullyy.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    fullyy.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thundermac/libs"' }
    fullyy.source_files = 'include/thunderboltmac/*.h'
    fullyy.vendored_libraries = 'libs/libthunderboltyymac.a'
    fullyy.libraries = 'z', 'thunderboltyymac'
  end
  
  s.subspec 'thunderboltyymacai' do |fullyyai|
    fullyyai.platform = :osx, '10.9'
    fullyyai.osx.deployment_target = '10.9'
    
    fullyyai.requires_arc = true
    fullyyai.frameworks = 'AudioUnit', 'Accelerate', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    fullyyai.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/thundermac/libs"' }
    fullyyai.source_files = 'include/thunderboltmac/*.h'
    fullyyai.vendored_libraries = 'libs/libthunderboltyymac.a'
    fullyyai.libraries = 'z', 'thunderboltyymac'
  end

  s.subspec 'thunderboltdynamicmac' do |dyfull|
    dyfull.platform = :osx, '10.9'
    dyfull.osx.deployment_target = '10.9'
    
    dyfull.requires_arc = true
    dyfull.frameworks = 'AudioUnit', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    dyfull.library = 'z'
    dyfull.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thundermac/libs/thunderboltdynamicmac.framework/Headers"' }
    dyfull.preserve_paths  = 'libs/thunderboltdynamicmac/thunderboltdynamicmac.framework'
    dyfull.osx.vendored_frameworks = 'libs/thunderboltdynamicmac.framework'
  end
  
  s.subspec 'thunderboltdynamicmacai' do |dyfullai|
    dyfullai.platform = :osx, '10.9'
    dyfullai.osx.deployment_target = '10.9'
    
    dyfullai.requires_arc = true
    dyfullai.frameworks = 'AudioUnit', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox', 'VideoDecodeAcceleration'
    dyfullai.library = 'z'
    dyfullai.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks','HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/thundermac/libs/thunderboltdynamicmacai.framework/Headers"' }
    dyfullai.preserve_paths  = 'libs/thunderboltdynamicmacai/thunderboltdynamicmacai.framework'
    dyfullai.osx.vendored_frameworks = 'libs/thunderboltdynamicmacai.framework'
  end

end
