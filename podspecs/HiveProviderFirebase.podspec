Pod::Spec.new do |spec|
  spec.name         = "HiveProviderFirebase"
  spec.version      = "1.0.0-beta3"
  $firebase_sdk_version = "9.3.0"
  spec.summary      = "HiveProviderFirebase optional framework"
  spec.description  = "HiveProviderFirebase to use Firebase analytics Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }
  spec.author       = { "seokjinyong" => "seokjinyong@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/seokjinyong/HiveSDK/releases/download/#{spec.version}/Hive_SDK_iOS_v#{spec.version}.zip" 
  }

  $vendored_frameworks_path = "{Hive_SDK_iOS_v#{spec.version}/framework, framework}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderFirebase.xcframework"

  spec.dependency 'HiveSDK'
  spec.dependency 'FirebaseCore', "#{$firebase_sdk_version}"
  spec.dependency 'FirebaseAnalytics', "#{$firebase_sdk_version}"
end
