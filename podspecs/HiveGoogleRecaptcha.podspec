Pod::Spec.new do |spec|
  spec.name         = "HiveGoogleRecaptcha"
  spec.version      = "23.0.0-beta1"
  spec.summary      = "Google reCAPTCHA(#{$google_recaptcha_version}) pod framework"
  spec.description  = "Google reCAPTCHA Enterprise is built on the existing reCAPTCHA API and it uses advanced risk analysis techniques to distinguish between humans and bots. It will be used with HiveRecaptcha"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "seokjinyong" => "seokjinyong@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "4.0"
  spec.source       = { 
    :http => "https://dl.google.com/dl/cpdc/a5fcc34560b0fa39/RecaptchaEnterprise-16.0.0.tar.gz",
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Optional_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveRecaptcha.xcframework"
  
  spec.dependency 'RecaptchaEnterprise', '18.4.0'
  spec.dependency 'HiveSDK', "#{spec.version}"
end
