Pod::Spec.new do |spec|
  spec.name         = "HiveProviderVK"
  spec.version      = "4.16.2.3-beta1"
  $vk_sdk_ios_version = "1.6.3"
  spec.summary      = "HiveProviderVK optional framework"
  spec.description  = "HiveProviderVK to use VK sign-in with Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "10.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderVK.xcframework"

  spec.dependency 'VK-ios-sdk', "#{$vk_sdk_ios_version}"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
