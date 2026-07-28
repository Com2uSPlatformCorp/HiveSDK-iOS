Pod::Spec.new do |spec|
  spec.name         = "HiveDataStore"
  spec.version      = "26.6.0-beta1"
  spec.summary      = "HiveDataStore optional framework  "
  spec.description  = "HiveDataStore to use DataStore service with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{spec.name}.xcframework.zip",
    :type => "zip"
  }

  spec.vendored_frameworks =  "#{spec.name}.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
