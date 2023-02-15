Pod::Spec.new do |spec|
  spec.name         = "HiveWXApi"
  spec.version      = "4.16.2.3-beta1"
  $wxapi_version = "1.9.6"
  spec.summary      = "Wechat WXApi(#{$wxapi_version}) pod framework"
  spec.description  = "HiveWxApi to use Wechat sign-in with HiveProviderWechat"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache License 2.0', 
    :file => 'LICENSE'
  }
  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "10.0"
  spec.frameworks   = 'WebKit'
  spec.libraries    = 'c++'

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveSDK-iOS/releases/download/#{spec.version}/Hive_SDK_iOS_External_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_SDK_iOS_External_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/WXApi.xcframework"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
