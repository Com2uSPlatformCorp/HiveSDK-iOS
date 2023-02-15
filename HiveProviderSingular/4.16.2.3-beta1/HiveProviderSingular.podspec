Pod::Spec.new do |spec|
  spec.name         = "HiveProviderSingular"
  spec.version      = "4.16.2.3-beta1"
  $singular_sdk_version = "11.0.10"
  spec.summary      = "HiveProviderSingular optional framework"
  spec.description  = "HiveProviderSingular to use Singular analytics Hive SDK."
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderSingular.xcframework"

  spec.dependency 'Singular-SDK', "#{$singular_sdk_version}"
end
