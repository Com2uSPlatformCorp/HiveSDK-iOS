Pod::Spec.new do |spec|
  spec.name         = "HerculesSwift"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "Hercules(2025.02.18) optional framework"
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

  spec.default_subspecs = 'Specified'

  spec.subspec 'Specified' do |herculesS|
    herculesS.dependency 'Hercules', "2025.02.18"
  end

  spec.subspec 'Latest' do |herculesL|
    herculesL.vendored_frameworks = "#{$vendored_frameworks_path}/HerculesSwift.xcframework"
    herculesL.dependency 'Hercules'
  end
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
