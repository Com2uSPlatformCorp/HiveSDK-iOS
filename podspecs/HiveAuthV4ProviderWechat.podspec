Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderWechat"
  spec.version      = "23.2.2-beta1"
  spec.summary      = "HiveAuthV4ProviderWechat optional framework"
  spec.description  = "HiveAuthV4ProviderWechat to use Wechat sign-in with Hive SDK."
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderWechat.xcframework"

  spec.dependency 'HiveWXApi', "#{spec.version}"
  spec.dependency 'HiveSDK', "#{spec.version}"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
