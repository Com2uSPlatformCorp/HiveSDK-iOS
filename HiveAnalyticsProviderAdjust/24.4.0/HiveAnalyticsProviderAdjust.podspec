Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderAdjust"
  spec.version      = "24.4.0"
  spec.summary      = "HiveAnalyticsProviderAdjust optional framework  "
  spec.description  = "HiveAnalyticsProviderAdjust to use Adjust with Hive SDK"
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/ProviderAdjust.xcframework"

  spec.dependency 'Adjust', "4.38.4"
  spec.dependency 'HiveSDK', "#{spec.version}"
  
  # subspecs
  spec.default_subspecs = 'AdjustDefault'

  spec.subspec 'AdjustDefault' do |adj|
  end

  spec.subspec 'SignatureV3' do |adjSig|
    adjSig.dependency 'HiveAnalyticsProviderAdjustSignatureV3', "#{spec.version}"
  end

end
