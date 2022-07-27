Pod::Spec.new do |s|

    s.name     = 'QY_iOS_SDK_Test'
    s.version  = '7.6.4'
    s.license  = { :"type" => "Copyright",
                   :"text" => " Copyright 2021 Netease \n"}  
    s.summary  = '网易七鱼客服访客端 iOS SDK'
    s.homepage = 'https://qiyukf.com'
    s.author   = { 'qiyukf' => 'yunshangfu@126.com' }
    s.source   = { :git => 'https://github.com/qiyukf/QY_iOS_SDK_Test.git', :tag => "7.6.4" }
    s.platform = :ios, '9.0'
    
    s.vendored_frameworks = '**/QYSDK.framework'
    s.framework = 'AVFoundation', 'UIKit', 'SystemConfiguration', 'MobileCoreServices', 'WebKit', 'CoreTelephony', 'CoreText', 'CoreMedia', 'ImageIO', 'CoreMotion', 'AudioToolbox', 'Photos', 'AssetsLibrary', 'Accelerate'
    s.libraries = 'c++', 'z','sqlite3.0','xml2'
    s.resources  = ['**/Resources/QYResource.bundle', '**/Resources/QYLanguage.bundle', '**/Resources/QYCustomResource.bundle']
    s.dependency 'NIMSDK_LITE', '8.8.3'
    s.subspec 'foreign' do |f|
        f.source_files = '*/foreign/QYNIMConfig+subspec.h','*/foreign/QYNIMConfig+subspec.m'
        f.frameworks = 'Foundation'
    end  
    s.requires_arc = true

end

