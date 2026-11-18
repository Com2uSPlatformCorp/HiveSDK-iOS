Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderVK"
  spec.version      = "26.8.0-beta1"
  spec.summary      = "HiveAuthV4ProviderVK optional framework"
  spec.description  = "HiveAuthV4ProviderVK to use VK sign-in with Hive SDK."
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "com2usplatform-hive1" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{$vendored_frameworks_path}.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{$vendored_frameworks_path}/ProviderVK.xcframework"

  spec.dependency 'HiveSDK', "#{spec.version}"
end
