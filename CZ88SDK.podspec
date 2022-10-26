Pod::Spec.new do |s|
  s.name = "CZ88SDK"
  s.version = "0.0.2"
  s.summary = "A short description of CZ88SDK."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"yangqian"=>"cherry.yang@rtbasia.com"}
  s.homepage = "https://git.rtbasia.com/rtbasia/cz88_sdk_demo_ios"
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = ["CoreLocation", "Foundation", "UIKit", "CoreMotion", "SystemConfiguration", "MobileCoreServices"]
    s.source       = { :git => "https://git.rtbasia.com/rtbasia/cz88_sdk_demo_ios.git", :tag => "#{s.version}" }

  s.ios.deployment_target    = '10.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64'}
  s.vendored_framework   = 'CZ88SDK.framework'
end
