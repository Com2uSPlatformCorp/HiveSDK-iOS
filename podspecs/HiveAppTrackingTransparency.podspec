Pod::Spec.new do |spec|
  spec.name         = "HiveAppTrackingTransparency"
  spec.version      = "4.22.0.0-beta3"
  spec.summary      = "HiveAppTrackingTransparency optional framework."
  spec.description  = "HiveAppTrackingTransparency to request user's advertising id. Upper than iOS 14.0 required."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Core_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Core_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveAppTrackingTransparency.xcframework"

  spec.frameworks = 'AppTrackingTransparency'
end
