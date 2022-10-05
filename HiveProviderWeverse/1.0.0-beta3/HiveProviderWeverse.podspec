Pod::Spec.new do |spec|
  spec.name         = "HiveProviderWeverse"
  spec.version      = "1.0.0-beta3"
  spec.summary      = "HiveProviderWeverse optional framework  "
  spec.description  = "HiveProviderWeverse to use Weverse sign-in with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }

  spec.author       = { "seokjinyong" => "seokjinyong@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/seokjinyong/HiveSDK/releases/download/#{spec.version}/Hive_SDK_iOS_v#{spec.version}.zip" 
  }

  $vendored_frameworks_path = "{Hive_SDK_iOS_v#{spec.version}/framework, framework}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderWeverse.xcframework"

  spec.dependency 'HiveSDK'
end
