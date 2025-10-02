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

  spec.source       = { 
    :git => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS.git",
    :tag => "#{spec.version.to_s}"
  }

  spec.prepare_command = <<-CMD
    download_xcframework() {
      curl -LO "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/$1.xcframework.zip"
      unzip -o $1.xcframework.zip
      rm -rf $1.xcframework.zip
    }
    download_bundle() {
      curl -LO "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/$1.bundle.zip"
      unzip -o $1.bundle.zip
      rm -rf $1.bundle.zip
    }
    download_xcframework HIVECore
    download_bundle HIVECoreResource
    download_xcframework HIVEService
    download_bundle HIVEServiceResource
    download_xcframework HIVEUI
    download_bundle HIVEResource
    download_xcframework HIVEProtocol
  CMD

  spec.vendored_frameworks =  "HIVECore.xcframework",
                              "HIVEProtocol.xcframework",
                              "HIVEService.xcframework",
                              "HIVEUI.xcframework"

  spec.resources  = ["HIVEResource.bundle",
                    "HIVECoreResource.bundle",
                    "HIVEServiceResource.bundle"]
  spec.frameworks = 'AppTrackingTransparency', 'StoreKit'
                              
  spec.dependency 'SDWebImage', "5.21.1"  
end
