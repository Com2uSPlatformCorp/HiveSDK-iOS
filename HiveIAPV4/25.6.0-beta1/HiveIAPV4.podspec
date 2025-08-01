Pod::Spec.new do |spec|
  spec.name         = "HiveIAPV4"
  spec.version      = "25.6.0-beta1"
  spec.summary      = "HiveIAPV4 optional framework  "
  spec.description  = "HiveIAPV4 to use In-App Purchase service with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Optional_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Optional_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVEIAPV4.xcframework",
                              "#{$vendored_frameworks_path}/HiveIAPV4Repayment.xcframework"
  spec.resources = ["#{$vendored_frameworks_path}/HiveIAPV4Resource.bundle",
                   "#{$vendored_frameworks_path}/HiveIAPV4RepaymentResource.bundle"]

  spec.dependency 'HiveSDK', "#{spec.version}"
end
