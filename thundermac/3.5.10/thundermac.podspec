Pod::Spec.new do |s|
  s.name         = 'thundermac'
  s.version      = '3.5.10'
  s.summary      = 'thundermac'
  s.homepage     = 'https://aivacom.com'
  s.license      = {
      :type => 'Copyright',
      :text => <<-LICENSE
      Copyright 2020, All rights reserved.
      LICENSE
    }
  s.author       = { 'yy' => 'yypm@yy.com' }
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/thundermac/3.5.10/thundermac.zip" }
  
  s.default_subspec = 'thunderboltmac'
  
  s.subspec 'thunderboltmac' do |full|
    full.platform = :osx, '10.9'
    full.osx.deployment_target = '10.9'
    full.dependency 'hydra/lite_macOS', '1.4.10'
full.dependency 'jobase/jobase-mac-lite', '1.4.10'
full.dependency 'transengine/transengine-full-macOS', '3.5.10'
full.dependency 'yyaudiosdk_mac', '3.5.10'
full.dependency 'yyvideolibmac', '1.0.60'
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
    fullai.dependency 'hydra/lite_macOS', '1.4.10'
fullai.dependency 'jobase/jobase-mac-lite', '1.4.10'
fullai.dependency 'transengine/transengine-full-macOS', '3.5.10'
fullai.dependency 'yyaudiosdk_mac/yyaudiosdk_ai_mac', '3.5.10'
fullai.dependency 'yyvideolibmac', '1.0.60'
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
    fullyy.dependency 'hydra/lite_macOS', '1.4.10'
fullyy.dependency 'jobase/jobase-mac-lite', '1.4.10'
fullyy.dependency 'transengine/transengine-full-macOS', '3.5.10'
fullyy.dependency 'yyaudiosdk_mac', '3.5.10'
fullyy.dependency 'yyvideolibmac', '1.0.60'
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
    fullyyai.dependency 'hydra/lite_macOS', '1.4.10'
fullyyai.dependency 'jobase/jobase-mac-lite', '1.4.10'
fullyyai.dependency 'transengine/transengine-full-macOS', '3.5.10'
fullyyai.dependency 'yyaudiosdk_mac/yyaudiosdk_ai_mac', '3.5.10'
fullyyai.dependency 'yyvideolibmac', '1.0.60'
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
