Pod::Spec.new do |s|
  s.name = "CZ88SDK"
  s.version = "0.0.1"
  s.summary = "We can use CZ88SDK to get ip address."
  # s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"yangqian"=>"cherry.yang@rtbasia.com"}
  s.homepage = "https://git.rtbasia.com/rtbasia/cz88_sdk_demo_ios"
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = ["CoreLocation", "Foundation", "UIKit", "CoreMotion", "SystemConfiguration", "MobileCoreServices","WebKit"]
    s.source       = { :git => "https://git.rtbasia.com/rtbasia/cz88_sdk_demo_ios.git", :tag => "#{s.version}" }

  s.ios.deployment_target    = '10.0'

  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.vendored_framework   = 'CZ88SDK.framework'
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
