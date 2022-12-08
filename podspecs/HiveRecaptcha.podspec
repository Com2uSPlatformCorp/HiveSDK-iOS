Pod::Spec.new do |spec|
  spec.name         = "HiveRecaptcha"
  spec.version      = "4.16.2-beta4"
  spec.summary      = "HiveRecpatcha optional framework"
  spec.description  = "HiveRecaptcha to use Google reCAPTCHA-Enterprise service when processing GUEST type sign-in with HiveSDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Optional_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Optional_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveRecaptcha.xcframework"
  spec.dependency 'HiveGoogleRecaptcha'
end
