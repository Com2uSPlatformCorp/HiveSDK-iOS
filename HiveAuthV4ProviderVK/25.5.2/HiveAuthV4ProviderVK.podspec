Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderVK"
  spec.version      = "25.5.2"
  spec.summary      = "HiveAuthV4ProviderVK optional framework"
  spec.description  = "HiveAuthV4ProviderVK to use VK sign-in with Hive SDK."
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderVK.xcframework"

  spec.dependency 'HiveSDK', "#{spec.version}"
end
