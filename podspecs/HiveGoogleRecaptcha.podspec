Pod::Spec.new do |spec|
  spec.name         = "HiveGoogleRecaptcha"
  spec.version      = "23.0.0-beta1"
  spec.summary      = "HiveGoogleRecaptcha optional framework"
  spec.description  = "HiveGoogleRecaptcha to use Google reCAPTCHA Enterprise when 'GUEST' sign-in with Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"
  spec.source       = { 
    :http => "https://dl.google.com/dl/cpdc/a5fcc34560b0fa39/RecaptchaEnterprise-16.0.0.tar.gz",
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Optional_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveRecaptcha.xcframework"
  
  spec.dependency 'RecaptchaEnterprise', '18.4.0'
  spec.dependency 'HiveSDK', "#{spec.version}"
end
