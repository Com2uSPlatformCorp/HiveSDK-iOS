Pod::Spec.new do |spec|
  spec.name         = "HerculesSwift"
  spec.version      = "26.6.0-beta13"
  spec.summary      = "Hercules(2026.07.06) optional framework"
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
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{spec.name}.xcframework.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{spec.name}.xcframework"

  spec.default_subspecs = 'Specified'

  spec.subspec 'Specified' do |herculesS|
    herculesS.dependency 'Hercules', "2026.07.06"
  end

  spec.subspec 'Latest' do |herculesL|
    herculesL.vendored_frameworks = "#{spec.name}.xcframework"
    herculesL.dependency 'Hercules'
  end

  spec.dependency 'HiveSDK', "#{spec.version}"
end
