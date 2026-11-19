Pod::Spec.new do |spec|
  spec.name         = "HiveAnalyticsProviderFirebase"
  spec.version      = "26.8.0"
  spec.summary      = "HiveAnalyticsProviderFirebase optional framework"
  spec.description  = "HiveAnalyticsProviderFirebase to use Firebase analytics Hive SDK."
  spec.homepage     = "https://developers.hiveplatform.ai/"
  spec.license      = {
    :type => 'Apache-2.0',
    :file => "#{Dir.pwd}/../../LICENSE"
  }
  spec.author       = { "Com2uSPlatformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "15.0"
  spec.swift_version = "5.0"

  $vendored_frameworks_path = "Hive_SDK_iOS_Provider_v#{spec.version}"

  spec.source       = {
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/#{$vendored_frameworks_path}.zip",
    :type => "zip"
  }

  spec.vendored_frameworks = "#{$vendored_frameworks_path}/ProviderFirebase.xcframework"

  spec.default_subspecs = 'FirebaseDefault'
  spec.dependency 'HiveSDK', "#{spec.version}"

  spec.subspec 'FirebaseDefault' do |firebase|
    firebase.platform     = :ios, "15.0"
    firebase.dependency 'FirebaseCore', "12.12.0"
    firebase.dependency 'FirebaseAnalytics', "12.12.0"
  end

  spec.subspec 'Firebase11' do |firebase|
    firebase.platform = :ios, '13.0'
    firebase.vendored_frameworks = "#{$vendored_frameworks_path}/ProviderFirebase.xcframework"
    firebase.dependency 'FirebaseCore', "11.15.0"
    firebase.dependency 'FirebaseAnalytics', "11.15.0"
  end

end
