Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderAppsFlyer"
  spec.version      = "26.8.0"
  spec.summary      = "HiveAnalyticsProviderAppsFlyer optional framework  "
  spec.description  = "HiveAnalyticsProviderAppsFlyer to use AppsFlyer with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2uSPlatformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{$vendored_frameworks_path}.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{$vendored_frameworks_path}/ProviderAppsFlyer.xcframework"

  spec.dependency 'AppsFlyerFramework', "6.17.9"
  spec.dependency 'HiveSDK', "#{spec.version}"
end
