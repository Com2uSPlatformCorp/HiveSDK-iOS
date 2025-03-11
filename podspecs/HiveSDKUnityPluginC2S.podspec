Pod::Spec.new do |spec|
  spec.name         = "HiveSDKUnityPluginC2S"
  spec.version      = "25.1.2"
  spec.summary      = "HiveSDK C2S c# language version"
  spec.description  = "HiveSDKUnityPluginC2S to use HiveSDK C2S for c# unity game engine"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.libraries    = 'c++', 'z', 'sqlite3'
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_C2S_Plugin_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_C2S_Plugin_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVE_SDK_UnityPlugin_C2S.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"

  spec.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
end
