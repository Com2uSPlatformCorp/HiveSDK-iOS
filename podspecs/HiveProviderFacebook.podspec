Pod::Spec.new do |spec|
  spec.name         = "HiveProviderFacebook"
  spec.version      = "4.23.0.0-beta1"
  spec.summary      = "HiveProviderFacebook optional framework"
  spec.description  = "HiveProviderFacebook to use Facebook sign-in with Hive SDK."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_Provider_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderFacebook.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
  # subspecs
  spec.default_subspecs = 'FacebookDefault'
  spec.subspec 'FacebookDefault' do |fb|
    fb.dependency 'FBSDKCoreKit', '16.2.1'
    fb.dependency 'FBSDKLoginKit', '16.2.1'
    fb.dependency 'FBSDKShareKit', '16.2.1'
    fb.dependency 'FBSDKGamingServicesKit', '16.2.1'
  end

end
