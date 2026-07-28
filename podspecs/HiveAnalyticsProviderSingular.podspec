Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderSingular"
  spec.version      = "26.6.0-beta1"
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

  $framework_name = "ProviderSingular"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{$framework_name}.xcframework.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{$framework_name}.xcframework"

  spec.dependency 'Singular-SDK', "12.10.0"
  spec.dependency 'HiveSDK', "#{spec.version}"
end
