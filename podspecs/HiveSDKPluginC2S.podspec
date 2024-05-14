Pod::Spec.new do |spec|
  spec.name         = "HiveSDKPluginC2S"
  spec.version      = "24.1.1"
  spec.summary      = "HiveSDK C2S c/c++ language version"
  spec.description  = "HiveSDKPluginC2S to use HiveSDK C2S for c/c++ game engine"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.libraries    = 'c++', 'sqlite3'
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_C2S_Plugin_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_C2S_Plugin_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVE_SDK_Plugin_C2S.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
