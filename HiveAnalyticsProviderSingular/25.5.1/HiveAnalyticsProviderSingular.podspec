Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderSingular"
  spec.version      = "25.5.1"
  spec.summary      = "HiveAnalyticsProviderSingular optional framework"
  spec.description  = "HiveAnalyticsProviderSingular to use Singular analytics Hive SDK."
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderSingular.xcframework"

  spec.dependency 'Singular-SDK', "12.7.1"
  spec.dependency 'HiveSDK', "#{spec.version}"
end
