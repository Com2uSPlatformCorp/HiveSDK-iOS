Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderAdjust"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "HiveAnalyticsProviderAdjust optional framework  "
  spec.description  = "HiveAnalyticsProviderAdjust to use Adjust with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $framework_name = "ProviderAdjust"

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
    download_xcframework #{$framework_name}
  CMD

  spec.vendored_frameworks =  "#{$framework_name}.xcframework"

  spec.dependency 'Adjust', "5.4.3"
  spec.dependency 'HiveSDK', "#{spec.version}"

end
