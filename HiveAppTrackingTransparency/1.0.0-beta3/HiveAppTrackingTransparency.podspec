Pod::Spec.new do |spec|
  spec.name         = "HiveAppTrackingTransparency"
  spec.version      = "1.0.0-beta3"
  spec.summary      = "HiveAppTrackingTransparency optional framework."
  spec.description  = "HiveAppTrackingTransparency to request user's advertising id. Upper than iOS 14.0 required."
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveAppTrackingTransparency.xcframework"

  spec.frameworks = 'AppTrackingTransparency'
  spec.dependency 'HiveSDK'
end
