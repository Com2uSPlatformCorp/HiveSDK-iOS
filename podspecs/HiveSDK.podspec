Pod::Spec.new do |spec|
  spec.name         = "HiveSDK"
  spec.version      = "25.8.0-beta2"
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

  $vendored_frameworks_path = "#{spec.name}.xcframework.zip"

  spec.source       = { 
    :git => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS.git",
    :tag => "#{spec.version.to_s}"
  }

  spec.vendored_frameworks =  "HIVECore.xcframework.zip/HIVECore.xcframework",
                              "HIVEProtocol.xcframework.zip/HIVEProtocol.xcframework",
                              "HIVEService.xcframework.zip/HIVEService.xcframework",
                              "HIVEUI.xcframework.zip/HIVEUI.xcframework"

  spec.resources  = ["HIVEResource.bundle.zip/HIVEResource.bundle",
                    "HIVECoreResource.bundle.zip/HIVECoreResource.bundle",
                    "HIVEServiceResource.bundle.zip/HIVEServiceResource.bundle"]
  spec.frameworks = 'AppTrackingTransparency', 'StoreKit'
                              
  spec.dependency 'SDWebImage', "5.21.1"  
end
