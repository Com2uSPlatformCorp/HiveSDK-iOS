Pod::Spec.new do |spec|
  spec.name         = "HerculesSwift"
  spec.version      = "24.1.1-beta2"
  spec.summary      = "Hercules(2024.04.11) optional framework"
  spec.description  = "Hercules to use security service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_External_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_External_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HerculesSwift.xcframework"
  
  spec.dependency 'HiveSDK', "#{spec.version}"
  spec.dependency 'Hercules', "2024.04.11"
end
