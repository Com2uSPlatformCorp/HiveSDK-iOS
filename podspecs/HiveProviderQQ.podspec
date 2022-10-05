Pod::Spec.new do |spec|
  spec.name         = "HiveProviderQQ"
  spec.version      = "1.0.0-beta3"
  spec.summary      = "HiveProviderQQ optional framework"
  spec.description  = "HiveProviderQQ to use QQ sign-in with Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }
  spec.author       = { "seokjinyong" => "seokjinyong@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"
  spec.frameworks    = 'Foundation','UIKit','SafariServices','CoreGraphics','Security'
  spec.libraries    = 'c++', 'z'

  spec.source       = { 
    :http => "https://github.com/seokjinyong/HiveSDK/releases/download/#{spec.version}/Hive_SDK_iOS_v#{spec.version}.zip",
  }
  
  $vendored_frameworks_path = "{Hive_SDK_iOS_v#{spec.version}/framework, framework}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderQQ.xcframework"

  spec.dependency 'HiveSDK'
  spec.dependency 'HiveTencentOpenAPI', "#{spec.version}"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
