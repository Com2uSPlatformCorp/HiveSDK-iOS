Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderSteam"
  spec.version      = "25.4.1-beta1"
  spec.summary      = "HiveAuthV4ProviderSteam optional framework  "
  spec.description  = "HiveAuthV4ProviderSteam to use Steam sign-in with Hive SDK"
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderSteam.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
