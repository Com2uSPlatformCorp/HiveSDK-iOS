Pod::Spec.new do |spec|
  spec.name         = "HiveExtensions"
  spec.version      = "26.6.0-beta1"
  spec.summary      = "HiveExtensions optional framework"
  spec.description  = "HiveExtensions to extend push notification service."
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $framework_name = "HIVEExtensions"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{$framework_name}.xcframework.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{spec.name}.xcframework"

  spec.dependency 'HiveSDK', "#{spec.version}"
end
