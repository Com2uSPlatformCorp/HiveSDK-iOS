Pod::Spec.new do |spec|
  spec.name         = "HiveProviderQQ"
  spec.version      = "4.21.0.3-beta1"
  spec.summary      = "HiveProviderQQ optional framework"
  spec.description  = "HiveProviderQQ to use QQ sign-in with Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"
  spec.frameworks    = 'Foundation','UIKit','SafariServices','CoreGraphics','Security'
  spec.libraries    = 'c++', 'z'

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }
  
  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderQQ.xcframework"

  spec.dependency 'HiveTencentOpenAPI', "#{spec.version}"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
