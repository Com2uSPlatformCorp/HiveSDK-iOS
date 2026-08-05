Pod::Spec.new do |spec|
  spec.name         = "HiveAgeRangeApple"
  spec.version      = "26.6.0-beta8"
  spec.summary      = "HiveAgeRangeApple optional framework  "
  spec.description  = "HiveAgeRangeApple to use identity authentication service with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $vendored_frameworks_path = "#{spec.name}.xcframework.zip"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{spec.name}.xcframework.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{spec.name}.xcframework"

  spec.dependency 'HiveSDK', "#{spec.version}"
end
