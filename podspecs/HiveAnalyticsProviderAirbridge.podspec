Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderAirbridge"
  spec.version      = "26.6.0-beta11"
  spec.summary      = "HiveAnalyticsProviderAirbridge optional framework  "
  spec.description  = "HiveAnalyticsProviderAirbridge to use AppsFlyer with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $framework_name = "ProviderAirbridge"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{$framework_name}.xcframework.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{$framework_name}.xcframework"

  spec.dependency 'airbridge-ios-sdk', "4.9.3"
  spec.dependency 'HiveSDK', "#{spec.version}"
end
