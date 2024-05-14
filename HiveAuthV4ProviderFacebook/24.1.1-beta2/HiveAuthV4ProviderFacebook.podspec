Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderFacebook"
  spec.version      = "24.1.1-beta2"
  spec.summary      = "HiveAuthV4ProviderFacebook optional framework"
  spec.description  = "HiveAuthV4ProviderFacebook to use Facebook sign-in with Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderFacebook.xcframework"
  spec.resources  = ["#{$vendored_frameworks_path}/FBAEMKit_Privacy.bundle",
                    "#{$vendored_frameworks_path}/FBSDKCoreKit_Basics_Privacy.bundle",
                    "#{$vendored_frameworks_path}/FBSDKCoreKit_Privacy.bundle",
                    "#{$vendored_frameworks_path}/FBSDKLoginKit_Privacy.bundle",
                    "#{$vendored_frameworks_path}/FBSDKShareKit_Privacy.bundle"]

  spec.dependency 'FBSDKCoreKit', '16.2.1'
  spec.dependency 'FBSDKLoginKit', '16.2.1'
  spec.dependency 'FBSDKShareKit', '16.2.1'
  spec.dependency 'FBSDKGamingServicesKit', '16.2.1'
  spec.dependency 'HiveSDK', "#{spec.version}"
end
