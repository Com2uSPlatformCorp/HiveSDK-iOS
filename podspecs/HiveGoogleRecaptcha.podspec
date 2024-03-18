Pod::Spec.new do |spec|
  spec.name         = "HiveGoogleRecaptcha"
  spec.version      = "4.22.0.6"
  $google_recaptcha_version = "16.0.0"
  $promises_swift_version = "2.1.1"
  $google_data_transport_version = "9.2.0"
  $google_toolbox_for_mac_nsdata_zlib_version = "2.1.0"
  $protobuf_version = "3.12.0"
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

  $vendored_frameworks_path = "**Frameworks"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/recaptcha.framework"
  spec.dependency 'PromisesSwift', "#{$promises_swift_version}"
  spec.dependency 'GoogleDataTransport', "#{$google_data_transport_version}"
  spec.dependency 'GoogleToolboxForMac/NSData+zlib', "#{$google_toolbox_for_mac_nsdata_zlib_version}"
  spec.dependency 'Protobuf', "#{$protobuf_version}"
end
