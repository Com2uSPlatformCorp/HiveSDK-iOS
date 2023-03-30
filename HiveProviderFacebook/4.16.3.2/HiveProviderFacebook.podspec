Pod::Spec.new do |spec|
  spec.name         = "HiveProviderFacebook"
  spec.version      = "4.16.3.2"
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
    fb12.dependency 'FBSDKCoreKit', "12.3.0"
    fb12.dependency 'FBSDKLoginKit', "12.3.0"
    fb12.dependency 'FBSDKShareKit', "12.3.0"
  end

  spec.subspec 'Facebook13' do |fb13|
    fb13.dependency 'FBSDKCoreKit', "13.2.0"
    fb13.dependency 'FBSDKLoginKit', "13.2.0"
    fb13.dependency 'FBSDKShareKit', "13.2.0"
    fb13.dependency 'FBSDKGamingServicesKit', "13.2.0"
    fb13.platform = :ios, "11.0"
  end

  spec.subspec 'Facebook15' do |fb15|
    fb15.dependency 'FBSDKCoreKit', "15.0.0"
    fb15.dependency 'FBSDKLoginKit', "15.0.0"
    fb15.dependency 'FBSDKShareKit', "15.0.0"
    fb15.dependency 'FBSDKGamingServicesKit', "15.0.0"
    fb15.platform = :ios, "12.0"
  end

end
