Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderGoogle"
  spec.version      = "25.4.1"
  spec.summary      = "HiveAuthV4ProviderGoogle optional framework"
  spec.description  = "HiveAuthV4ProviderGoogle to use Google sign-in with Hive SDK."
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderGoogle.xcframework"

  spec.dependency 'GoogleUtilities/AppDelegateSwizzler'
  spec.dependency 'GoogleUtilities/MethodSwizzler'
  spec.dependency 'GoogleUtilities/Network'
  spec.dependency 'GoogleUtilities/NSData+zlib'
  spec.dependency 'GoogleUtilities/Environment'
  spec.dependency 'GoogleUtilities/Logger'
  spec.dependency 'GoogleUtilities/UserDefaults'
  spec.dependency 'GoogleSignIn', "8.0.0"
  spec.dependency 'HiveSDK', "#{spec.version}"
end
