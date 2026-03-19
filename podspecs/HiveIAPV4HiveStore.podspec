Pod::Spec.new do |spec|
  spec.name         = "HiveIAPV4HiveStore"
  spec.version      = "26.3.0-alpha"
  spec.summary      = "HiveIAPV4HiveStore optional framework  "
  spec.description  = "HiveIAPV4HiveStore to use Hive Store In-App Purchase service with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = {
    :git => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS.git",
    :tag => "#{spec.version.to_s}"
  }

  spec.prepare_command = <<-CMD
    download_xcframework() {
      curl -LO "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/$1.xcframework.zip"
      unzip -o $1.xcframework.zip
      rm -rf $1.xcframework.zip
    }
    download_xcframework #{spec.name}
  CMD

  spec.vendored_frameworks =  "#{spec.name}.xcframework"

  spec.dependency 'HiveIAPV4', "#{spec.version}"
end