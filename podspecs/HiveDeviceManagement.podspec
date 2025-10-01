Pod::Spec.new do |spec|
  spec.name         = "HiveDeviceManagement"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "HiveDeviceManagement optional framework  "
  spec.description  = "HiveDeviceManagement to use DeviceManagement service with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $vendored_frameworks_path = "#{spec.name}.xcframework.zip"

  spec.source       = { 
    :git => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS.git",
    :tag => "#{spec.version.to_s}"
  }

  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/#{spec.name}.xcframework"
  spec.resource  = "#{$vendored_frameworks_path}/#{spec.name}Resource.bundle"

  spec.dependency 'HiveSDK', "#{spec.version}"
end
