Pod::Spec.new do |spec|
  spec.name         = "HiveIAPV4"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "HiveIAPV4 optional framework  "
  spec.description  = "HiveIAPV4 to use In-App Purchase service with Hive SDK"
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $framework_name = "HIVEIAPV4"
  $resource_name = "#{spec.name}Resource"

  $framework_name_repayment = "#{spec.name}Repayment"
  $resource_name_repayment = "#{spec.name}RepaymentResource"

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
    download_bundle() {
      curl -LO "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/$1.bundle.zip"
      unzip -o $1.bundle.zip
      rm -rf $1.bundle.zip
    }
    download_xcframework #{$framework_name}
    download_bundle #{$resource_name}
    download_xcframework #{$framework_name_repayment}
    download_bundle #{$resource_name_repayment}
  CMD

  spec.vendored_frameworks =  "#{$framework_name}.xcframework",
                              "#{$framework_name_repayment}.xcframework"
  spec.resources = ["#{$resource_name}.bundle",
                   "#{$resource_name_repayment}.bundle"]

  spec.dependency 'HiveSDK', "#{spec.version}"
end
