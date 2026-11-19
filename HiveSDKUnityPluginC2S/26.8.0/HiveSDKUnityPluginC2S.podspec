Pod::Spec.new do |spec|
  spec.name         = "HiveSDKUnityPluginC2S"
  spec.version      = "26.8.0"
  spec.summary      = "HiveSDK C2S c# language version"
  spec.description  = "HiveSDKUnityPluginC2S to use HiveSDK C2S for c# unity game engine"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2uSPlatformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.libraries = 'c++', 'z', 'sqlite3'
  spec.swift_version = "5.0"

  $vendored_frameworks_path = "Hive_SDK_iOS_Plugin_v#{spec.version}"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{$vendored_frameworks_path}.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{$vendored_frameworks_path}/HIVE_SDK_UnityPlugin_C2S.xcframework"

  spec.dependency 'HiveSDK', "#{spec.version}"

  spec.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
end
