Pod::Spec.new do |spec|
  spec.name         = "HiveProviderGoogle"
  spec.version      = "4.16.4.0-beta1"
  spec.summary      = "HiveProviderGoogle optional framework"
  spec.description  = "HiveProviderGoogle to use Google sign-in with Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip" 
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderGoogle.xcframework"

  spec.dependency 'GoogleSignIn', "6.2.4"
end
