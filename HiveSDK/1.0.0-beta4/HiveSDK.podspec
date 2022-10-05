Pod::Spec.new do |spec|
  spec.name         = "HiveSDK"
  spec.version      = "1.0.0-beta4"
  $facebook_sdk_version = "13.2.0"
  $google_signin_sdk_version = "6.1.0"
  $sd_web_image_sdk_version = "5.12.5"
  spec.summary      = "Hive SDK required frameworks."
  spec.description  = "Hive SDK frameworks help you to develop your application easily."
  spec.homepage     = "https://developers.withhive.com/"

  spec.license      = {
    :type => "Apache License Version 2.0",
    :file => 'LICENSE'
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/seokjinyong/HiveSDK/releases/download/#{spec.version}/Hive_SDK_iOS_Core_v#{spec.version}.zip" 
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Core_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HIVEBase.xcframework", 
                              "#{$vendored_frameworks_path}/HIVECore.xcframework",
                              "#{$vendored_frameworks_path}/HIVEIAPV4.xcframework",
                              "#{$vendored_frameworks_path}/HIVEProtocol.xcframework",
                              "#{$vendored_frameworks_path}/HIVEService.xcframework",
                              "#{$vendored_frameworks_path}/HIVEUI.xcframework",
                              "#{$vendored_frameworks_path}/ProviderAdapter.xcframework"

  spec.dependency 'FBSDKCoreKit', "#{$facebook_sdk_version}"
  spec.dependency 'FBSDKLoginKit', "#{$facebook_sdk_version}"
  spec.dependency 'FBSDKShareKit', "#{$facebook_sdk_version}"
  spec.dependency 'GoogleSignIn', "#{$google_signin_sdk_version}"
  spec.dependency 'SDWebImage', "#{$sd_web_image_sdk_version}"
end
