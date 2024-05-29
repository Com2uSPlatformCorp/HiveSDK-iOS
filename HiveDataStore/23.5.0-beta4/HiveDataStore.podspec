Pod::Spec.new do |spec|
  spec.name         = "HiveDataStore"
  spec.version      = "23.5.0-beta4"
  spec.summary      = "HiveDataStore optional framework  "
  spec.description  = "HiveDataStore to use DataStore service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Optional_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Optional_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveDataStore.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
