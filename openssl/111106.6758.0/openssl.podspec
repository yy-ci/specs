Pod::Spec.new do |s|
  s.name         = "openssl"
  s.version      = "111106.6758.0"
  s.summary      = "openssl library"
  s.homepage     = "https://www.openssl.org"
  s.license      = "OpenSSL License"
  s.author       = "The OpenSSL Project"
  s.source       = { :http => "https://cirepo.bs2dl.yy.com/sdks/ios/openssl/111106.6758.0/openssl.zip" }

  s.platform     = :ios, '4.3'
  s.ios.deployment_target = '4.3'
  s.requires_arc = true
  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = './include'
  s.preserve_paths = 'lib/*.a'

  s.libraries = 'crypto', 'ssl'
  s.vendored_libraries = 'libcrypto.a', 'libssl.a'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/openssl/lib/'}
  
end
