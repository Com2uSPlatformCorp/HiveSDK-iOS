Pod::Spec.new do |spec|
  spec.name         = "HiveIAPV4HiveStore"
  spec.version      = "26.6.0-beta5"
  spec.summary      = "HiveIAPV4HiveStore optional framework  "
  spec.description  = "HiveIAPV4HiveStore to use Hive Store In-App Purchase service with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{spec.name}.xcframework.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{spec.name}.xcframework"

  spec.dependency 'HiveIAPV4', "#{spec.version}"
end
