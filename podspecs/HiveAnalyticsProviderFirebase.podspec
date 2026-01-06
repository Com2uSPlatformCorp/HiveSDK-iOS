Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderFirebase"
  spec.version      = "26.1.0-beta5"
  spec.summary      = "HiveAnalyticsProviderFirebase optional framework"
  spec.description  = "HiveAnalyticsProviderFirebase to use Firebase analytics Hive SDK."
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  $framework_name = "ProviderFirebase"

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

  spec.default_subspecs = 'FirebaseDefault'
  spec.dependency 'HiveSDK', "#{spec.version}"

  spec.subspec 'FirebaseDefault' do |firebase|
    firebase.dependency 'FirebaseCore', "11.15.0"
    firebase.dependency 'FirebaseAnalytics', "11.15.0"
  end

  spec.subspec 'Firebase12' do |firebase|
    firebase.platform = :ios, '15.0'
    firebase.dependency 'FirebaseCore', "12.5.0"
    firebase.dependency 'FirebaseAnalytics', "12.5.0"
  end
  
end
