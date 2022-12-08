Pod::Spec.new do |spec|
  spec.name         = "HiveSDKUnityPlugin"
  spec.version      = "4.16.2-beta4"
  spec.summary      = "HiveSDK c# language version"
  spec.description  = "HiveSDKUnityPlugin to use HiveSDK for c# unity game engine"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.libraries    = 'c++', 'z', 'sqlite3'
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Plugin_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Plugin_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVE_SDK_UnityPlugin.xcframework"

  spec.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
end
