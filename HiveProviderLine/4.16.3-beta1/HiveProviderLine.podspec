Pod::Spec.new do |spec|
  spec.name         = "HiveProviderLine"
  spec.version      = "4.16.3-beta1"
  $line_sdk_version = "5.8.2"
  spec.summary      = "HiveProviderLine optional framework"
  spec.description  = "HiveProviderLine to use Line sign-in with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "10.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderLine.xcframework"

  spec.dependency 'LineSDKSwift', "#{$line_sdk_version}"
end
