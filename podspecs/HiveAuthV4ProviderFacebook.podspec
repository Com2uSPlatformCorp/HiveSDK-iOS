Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderFacebook"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "HiveAuthV4ProviderFacebook optional framework"
  spec.description  = "HiveAuthV4ProviderFacebook to use Facebook sign-in with Hive SDK."
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $framework_name = "ProviderFacebook"
  $vendored_frameworks_path = "#{$framework_name}.xcframework.zip"
  $additional_resource_path = "FBPrivacyBundle.zip"

  spec.source       = { 
    :git => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS.git",
    :tag => "#{spec.version.to_s}"
  }

  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/#{$framework_name}.xcframework"
  spec.resources  = ["#{$additional_resource_path}/FBAEMKit_Privacy.bundle",
                    "#{$additional_resource_path}/FBSDKCoreKit_Basics_Privacy.bundle",
                    "#{$additional_resource_path}/FBSDKCoreKit_Privacy.bundle",
                    "#{$additional_resource_path}/FBSDKLoginKit_Privacy.bundle",
                    "#{$additional_resource_path}/FBSDKShareKit_Privacy.bundle"]

  spec.dependency 'FBSDKCoreKit', '18.0.0'
  spec.dependency 'FBSDKLoginKit', '18.0.0'
  spec.dependency 'FBSDKShareKit', '18.0.0'
  spec.dependency 'FBSDKGamingServicesKit', '18.0.0'
  spec.dependency 'HiveSDK', "#{spec.version}"
end
