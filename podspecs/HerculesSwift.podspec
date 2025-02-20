Pod::Spec.new do |spec|
  spec.name         = "HerculesSwift"
  spec.version      = "25.1.0-beta1"
  spec.summary      = "Hercules(2024.11.20) optional framework"
  spec.description  = "Hercules to use security service with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_External_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_External_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HerculesSwift.xcframework"

  spec.default_subspecs = 'HerculesSpecified'

  spec.subspec 'HerculesLatest' do |herculesL|
    herculesL.dependency 'Hercules'
  end

  spec.subspec 'HerculesSpecified' do |herculesS|
    herculesS.dependency 'Hercules', "2024.11.20"
  end
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
