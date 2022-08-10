Pod::Spec.new do |spec|
  spec.name         = "HiveTencentOpenAPI"
  spec.version      = "4.15.8"
  $tencent_open_api_version = "3.3.9"
  spec.summary      = "TencentOpenAPI(#{$tencent_open_api_version}) pod framework"
  spec.description  = "HiveTencentOpenAPI to use QQ sign-in with HiveProviderQQ"
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
  spec.frameworks       = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics', 'WebKit'

  spec.source       = { 
    :git => "https://github.com/seokjinyong/HiveSDK-iOS.git", :tag => "#{spec.version}"
  }

  $framework_path = "external/TencentOpenAPI.framework"
  spec.source_files = "#{$framework_path}/**/*.{h, m}"
  spec.public_header_files = "#{$framework_path}/**/*.{h}"
  spec.vendored_frameworks = "#{$framework_path}"
  spec.module_map = "#{$framework_path}/Modules/module.modulemap"

  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
