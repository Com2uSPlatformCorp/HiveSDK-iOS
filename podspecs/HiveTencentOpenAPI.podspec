Pod::Spec.new do |spec|
  spec.name         = "HiveTencentOpenAPI"
  spec.version      = "4.21.0.0-beta1"
  spec.summary      = "TencentOpenAPI(3.5.12) pod framework"
  spec.description  = "HiveTencentOpenAPI to use QQ sign-in with HiveProviderQQ"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.frameworks       = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'WebKit'

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_External_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_External_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/TencentOpenAPI.xcframework"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
