require_relative 'VersionManager.rb'

Pod::Spec.new do |spec|
  spec.name         = "HiveProviderFacebook"
  spec.version      = HIVE_SDK_VERSION
  spec.summary      = "HiveProviderFacebook optional framework"
  spec.description  = "HiveProviderFacebook to use Facebook sign-in with Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "10.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderFacebook.xcframework"

  # subspecs
  spec.default_subspecs = 'FacebookDefault'

  spec.subspec 'FacebookDefault' do |fb|
    fb.dependency 'FBSDKCoreKit'
    fb.dependency 'FBSDKLoginKit'
    fb.dependency 'FBSDKShareKit'
  end

  spec.subspec 'Facebook12' do |fb12|
    fb12.dependency 'FBSDKCoreKit', FACEBOOK_12_VERSION
    fb12.dependency 'FBSDKLoginKit', FACEBOOK_12_VERSION
    fb12.dependency 'FBSDKShareKit', FACEBOOK_12_VERSION
  end

  spec.subspec 'Facebook13' do |fb13|
    fb13.dependency 'FBSDKCoreKit', FACEBOOK_13_VERSION
    fb13.dependency 'FBSDKLoginKit', FACEBOOK_13_VERSION
    fb13.dependency 'FBSDKShareKit', FACEBOOK_13_VERSION
    fb13.platform = :ios, "11.0"
  end

  spec.subspec 'Facebook15' do |fb15|
    fb15.dependency 'FBSDKCoreKit', FACEBOOK_15_VERSION
    fb15.dependency 'FBSDKLoginKit', FACEBOOK_15_VERSION
    fb15.dependency 'FBSDKShareKit', FACEBOOK_15_VERSION
    fb15.platform = :ios, "12.0"
  end

end
