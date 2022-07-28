Pod::Spec.new do |spec|
  spec.name         = "HiveAppTrackingTransparency"
  spec.version      = "4.15.8"
  spec.summary      = "HiveAppTrackingTransparency optional framework."
  spec.description  = "HiveAppTrackingTransparency to request user's advertising id. Upper than iOS 14.0 required."
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    type: "MIT",
    text: <<-LICENCE
      MIT License

      Copyright (c) 2022 seokjinyong
      
      Permission is hereby granted, free of charge, to any person obtaining a copy
      of this software and associated documentation files (the "Software"), to deal
      in the Software without restriction, including without limitation the rights
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
      copies of the Software, and to permit persons to whom the Software is
      furnished to do so, subject to the following conditions:
      
      The above copyright notice and this permission notice shall be included in all
      copies or substantial portions of the Software.
      
      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
      SOFTWARE.
    LICENCE
  }
  spec.author       = { "seokjinyong" => "seokjinyong@com2us.com" }
  spec.platform     = :ios, "10.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/seokjinyong/HiveSDK/releases/download/#{spec.version}/HIVE_SDK_iOS_v#{spec.version}_withCore.zip" 
  }

  # 4.16.0.2 미만
  $vendored_frameworks_path = "SDK/framework"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/HiveAppTrackingTransparency.framework"

  spec.frameworks = 'AppTrackingTransparency'
  spec.dependency 'HiveSDK', "#{spec.version}"

  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
end
