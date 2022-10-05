Pod::Spec.new do |spec|
  spec.name         = "HiveProviderAppsFlyer"
  spec.version      = "1.0.0-beta3"
  $appsflyer_sdk_version = "6.5.2"
  spec.summary      = "HiveProviderAppsFlyer optional framework  "
  spec.description  = "HiveProviderAppsFlyer to use AppsFlyer with Hive SDK"
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderAppsFlyer.xcframework"

  spec.dependency 'HiveSDK'
  spec.dependency 'AppsFlyerFramework', "#{$appsflyer_sdk_version}"
end
