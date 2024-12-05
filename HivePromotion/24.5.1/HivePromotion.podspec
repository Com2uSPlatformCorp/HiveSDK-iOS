Pod::Spec.new do |spec|
  spec.name         = "HivePromotion"
  spec.version      = "24.5.1"
  spec.summary      = "HivePromotion optional framework  "
  spec.description  = "HivePromotion to use Promotion service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Optional_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Optional_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HivePromotion.xcframework"
  spec.resource  = "#{$vendored_frameworks_path}/HivePromotionResource.bundle"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
