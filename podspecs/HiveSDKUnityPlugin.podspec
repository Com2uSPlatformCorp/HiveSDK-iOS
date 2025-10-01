Pod::Spec.new do |spec|
  spec.name         = "HiveSDKUnityPlugin"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "HiveSDK c# language version"
  spec.description  = "HiveSDKUnityPlugin to use HiveSDK for c# unity game engine"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.libraries    = 'c++', 'z', 'sqlite3'
  spec.swift_version = "5.0"

  $framework_name = "HIVE_SDK_UnityPlugin"
  $vendored_frameworks_path = "#{$framework_name}.xcframework.zip"

  spec.source       = { 
    :git => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS.git",
    :tag => "#{spec.version.to_s}"
  }

  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/#{$framework_name}.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"

  spec.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
end
