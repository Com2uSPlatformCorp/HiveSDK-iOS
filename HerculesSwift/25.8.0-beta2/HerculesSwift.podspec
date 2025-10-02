Pod::Spec.new do |spec|
  spec.name         = "HerculesSwift"
  spec.version      = "25.8.0-beta2"
  spec.summary      = "Hercules(2025.02.18) optional framework"
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

  spec.default_subspecs = 'Specified'

  spec.subspec 'Specified' do |herculesS|
    herculesS.dependency 'Hercules', "2025.02.18"
  end

  spec.subspec 'Latest' do |herculesL|
    herculesL.vendored_frameworks = "#{spec.name}.xcframework"
    herculesL.dependency 'Hercules'
  end
  
  spec.dependency 'HiveSDK', "#{spec.version}"
end
