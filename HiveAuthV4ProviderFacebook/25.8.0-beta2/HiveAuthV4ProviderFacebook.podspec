Pod::Spec.new do |spec|
  spec.name         = "HiveAuthV4ProviderFacebook"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "HiveAuthV4ProviderFacebook optional framework"
  spec.description  = "HiveAuthV4ProviderFacebook to use Facebook sign-in with Hive SDK."
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $framework_name = "ProviderFacebook"
  $additional_resource_name = "FBPrivacyBundle"

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

    curl -LO "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{$additional_resource_name}.zip"
    unzip -o "#{$additional_resource_name}.zip"
    rm -rf "#{$additional_resource_name}.zip"
  CMD

  spec.vendored_frameworks =  "#{$framework_name}.xcframework"
  spec.resources  = ["#{$additional_resource_name}/FBAEMKit_Privacy.bundle",
                    "#{$additional_resource_name}/FBSDKCoreKit_Basics_Privacy.bundle",
                    "#{$additional_resource_name}/FBSDKCoreKit_Privacy.bundle",
                    "#{$additional_resource_name}/FBSDKLoginKit_Privacy.bundle",
                    "#{$additional_resource_name}/FBSDKShareKit_Privacy.bundle"]

  spec.dependency 'FBSDKCoreKit', '18.0.0'
  spec.dependency 'FBSDKLoginKit', '18.0.0'
  spec.dependency 'FBSDKShareKit', '18.0.0'
  spec.dependency 'FBSDKGamingServicesKit', '18.0.0'
  spec.dependency 'HiveSDK', "#{spec.version}"
end
