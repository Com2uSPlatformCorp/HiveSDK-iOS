Pod::Spec.new do |spec|
  spec.name         = "HiveProviderAppsFlyer"
  spec.version      = "4.20.2.1-beta1"
  $appsflyer_sdk_version = "6.8.1"
  spec.summary      = "HiveProviderAppsFlyer optional framework  "
  spec.description  = "HiveProviderAppsFlyer to use AppsFlyer with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "10.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderAppsFlyer.xcframework"

  spec.dependency 'AppsFlyerFramework', "#{$appsflyer_sdk_version}"
end
