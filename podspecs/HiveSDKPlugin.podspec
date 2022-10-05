Pod::Spec.new do |spec|
  spec.name         = "HiveSDKPlugin"
  spec.version      = "1.0.0-beta3"
  spec.summary      = "HiveSDK c/c++ language version"
  spec.description  = "HiveSDKPlugin to use HiveSDK for c/c++ game engine"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }
  spec.author       = { "seokjinyong" => "seokjinyong@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.libraries    = 'c++', 'sqlite3'
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/seokjinyong/HiveSDK/releases/download/#{spec.version}/Hive_SDK_iOS_v#{spec.version}.zip",
  }

  spec.dependency 'HiveSDK'

  $vendored_frameworks_path = "{Hive_SDK_iOS_v#{spec.version}/framework, framework}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVE_SDK_Plugin.xcframework"
end
