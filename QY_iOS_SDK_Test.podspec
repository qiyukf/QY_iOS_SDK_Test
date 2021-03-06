Pod::Spec.new do |s|

    s.name     = 'QY_iOS_SDK_Test'
    s.version  = '7.7.4'
    s.license  = { :"type" => "Copyright",
                   :"text" => " Copyright 2021 Netease \n"}  
    s.summary  = '网易七鱼客服访客端 iOS SDK'
    s.homepage = 'https://qiyukf.com'
    s.author   = { 'qiyukf' => 'yunshangfu@126.com' }
    s.source   = { :git => 'https://github.com/qiyukf/QY_iOS_SDK_Test.git', :tag => "7.7.4" }
    s.platform = :ios, '9.0'
    s.frameworks = 'AVFoundation', 'UIKit', 'SystemConfiguration', 'MobileCoreServices', 'WebKit', 'CoreTelephony', 'CoreText', 'CoreMedia', 'ImageIO', 'CoreMotion', 'AudioToolbox', 'Photos', 'AssetsLibrary', 'Accelerate'
    s.libraries = 'c++', 'z','sqlite3.0','xml2'
    s.resources  = ['**/Resources/QYResource.bundle', '**/Resources/QYLanguage.bundle', '**/Resources/QYCustomResource.bundle']
    s.default_subspec = 'Default'
    s.subspec 'Default' do |ds|
        ds.vendored_frameworks = '**/QYSDK.framework'
        ds.dependency 'QY_NIMSDK_LITE', '8.9.3'
      end
    s.subspec 'Abroad' do |as|
    		as.source_files = '**/QYNIMConfig+abroad.h','**/QYNIMConfig+abroad.m'
    		as.resources = ['**/Resources/QYResource.bundle', '**/Resources/QYLanguage.bundle', '**/Resources/QYCustomResource.bundle']
        as.vendored_frameworks = '**/QYSDK.framework'
        as.frameworks = 'QYSDK'
        as.dependency 'NIMSDK_LITE', '9.2.8'
        
    end  
    s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7,x86_64,arm64' }
    s.requires_arc = true

end

