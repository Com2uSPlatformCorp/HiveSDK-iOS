Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderLine"
  spec.version      = "23.2.3"
  spec.summary      = "HiveAuthV4ProviderLine optional framework"
  spec.description  = "HiveAuthV4ProviderLine to use Line sign-in with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderLine.xcframework"

  spec.dependency 'LineSDKSwift', "5.10.0"
  spec.dependency 'HiveSDK', "#{spec.version}"
end
