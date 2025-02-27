Pod::Spec.new do |spec|
  spec.name         = "HiveSDKPlugin"
  spec.version      = "25.1.0"
  spec.summary      = "HiveSDK c/c++ language version"
  spec.description  = "HiveSDKPlugin to use HiveSDK for c/c++ game engine"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.libraries    = 'c++', 'sqlite3'
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Plugin_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Plugin_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVE_SDK_Plugin.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
