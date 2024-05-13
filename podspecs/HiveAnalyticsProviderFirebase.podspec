Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderFirebase"
  spec.version      = "24.1.0-beta2"
  spec.summary      = "HiveAnalyticsProviderFirebase optional framework"
  spec.description  = "HiveAnalyticsProviderFirebase to use Firebase analytics Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderFirebase.xcframework"

  spec.dependency 'FirebaseCore', "10.22.0"
  spec.dependency 'FirebaseAnalytics', "10.22.0"
  spec.dependency 'HiveSDK', "#{spec.version}"
  
end
