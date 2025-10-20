Pod::Spec.new do |spec|
  spec.name         = "HiveTencentOpenAPI"
  spec.version      = "25.8.1-beta1"
  spec.summary      = "TencentOpenAPI(3.5.17.5.5.5.5.5.5.5.4) pod framework"
  spec.description  = "HiveTencentOpenAPI to use QQ sign-in with HiveProviderQQ"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.frameworks       = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'WebKit'

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_External_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_External_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/TencentOpenAPI.xcframework"
  spec.resource  = "#{$vendored_frameworks_path}/TencentOpenAPIResource.bundle"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
