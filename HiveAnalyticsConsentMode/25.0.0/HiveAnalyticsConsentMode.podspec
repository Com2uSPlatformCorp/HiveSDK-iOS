Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsConsentMode"
  spec.version      = "25.0.0"
  spec.summary      = "HiveAnalyticsConsentMode optional framework  "
  spec.description  = "HiveAnalyticsConsentMode to use ConsentMode UI with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Optional_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Optional_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveAnalyticsConsentMode.xcframework"
  spec.resource  = "#{$vendored_frameworks_path}/HiveAnalyticsConsentModeResource.bundle"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
