Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsConsentMode"
  spec.version      = "4.24.1.1-beta1"
  spec.summary      = "HiveAnalyticsConsentMode optional framework  "
  spec.description  = "HiveAnalyticsConsentMode to use ConsentMode UI with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Optional_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Optional_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveAnalyticsConsentMode.xcframework"
  spec.resource  = "#{$vendored_frameworks_path}/HiveAnalyticsConsentModeResource.bundle"
  spec.resource_bundles = {'HiveAnalyticsConsentModePrivacyInfo' => ["#{$vendored_frameworks_path}/HiveAnalyticsConsentMode.xcframework/ios-arm64/HiveAnalyticsConsentMode.framework/PrivacyInfo.xcprivacy"]} 
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
