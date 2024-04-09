Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderLine"
  spec.version      = "23.4.0"
  spec.summary      = "HiveAuthV4ProviderLine optional framework"
  spec.description  = "HiveAuthV4ProviderLine to use Line sign-in with Hive SDK"
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderLine.xcframework"
  spec.default_subspecs = 'LineSDKSwiftDefault'

  spec.subspec 'LineSDKSwiftDefault' do |line|
    line.dependency 'LineSDKSwift'
  end

  spec.subspec 'LineSDKSwift11' do |line11|
    line11.dependency 'LineSDKSwift', "5.11.0"
    line11.platform = :ios, "13.0"
  end

end
