Pod::Spec.new do |spec|
  spec.name         = "HiveSDK"
  spec.version      = "25.7.0-beta1"
  spec.summary      = "Hive SDK frameworks including all additional services."
  spec.description  = "Hive SDK frameworks help you to develop your application easily."
  spec.homepage     = "https://developers.hiveplatform.ai/"

  spec.license      = {
    :type => "Apache-2.0",
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Core_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Core_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVECore.xcframework",
                              "#{$vendored_frameworks_path}/HIVEProtocol.xcframework",
                              "#{$vendored_frameworks_path}/HIVEService.xcframework",
                              "#{$vendored_frameworks_path}/HIVEUI.xcframework"

  spec.resources  = ["#{$vendored_frameworks_path}/HiveResource.bundle",
                    "#{$vendored_frameworks_path}/HIVECoreResource.bundle",
                    "#{$vendored_frameworks_path}/HIVEServiceResource.bundle"]
  spec.frameworks = 'AppTrackingTransparency', 'StoreKit'
                              
  spec.dependency 'SDWebImage', "5.20.0"  
end
