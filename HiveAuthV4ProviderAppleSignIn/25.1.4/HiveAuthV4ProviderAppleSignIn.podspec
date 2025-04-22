Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderAppleSignIn"
  spec.version      = "25.1.4"
  spec.summary      = "HiveAuthV4ProviderAppleSignIn optional framework"
  spec.description  = "HiveAuthV4ProviderAppleSignIn to use Apple sign-in with Hive SDK."
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderSignInApple.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
