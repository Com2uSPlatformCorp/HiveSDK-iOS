Pod::Spec.new do |spec|
  spec.name         = "HiveRealNameVerification"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "HiveRealNameVerification optional framework  "
  spec.description  = "HiveRealNameVerification to use Real Name Verification service with Hive SDK"
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
    }
    download_bundle() {
      curl -LO "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/$1.bundle.zip"
      unzip -o $1.bundle.zip
    }
    download_xcframework #{spec.name}
    download_bundle #{spec.name}Resource
  CMD

  spec.vendored_frameworks =  "#{spec.name}.xcframework"
  spec.resource  = "#{spec.name}Resource.bundle"

  spec.dependency 'HiveSDK', "#{spec.version}"
end
