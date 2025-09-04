Pod::Spec.new do |s|

    s.name     = 'QY_iOS_SDK_Test'
    s.version  = '8.10.5'
    s.license  = { :"type" => "Copyright",
                   :"text" => " Copyright 2021 Netease \n"}
    s.summary  = '网易七鱼客服访客端 iOS SDK'
    s.homepage = 'https://qiyukf.com'
    s.author   = { 'qiyukf' => 'yunshangfu@126.com' }
    s.source   = { :git => 'https://github.com/qiyukf/QY_iOS_SDK_Test.git', :tag => "#{s.version}" }
    s.platform = :ios, '9.0'
    
    s.vendored_frameworks = '**/QYSDK_ReName.xcframework'
    s.framework = 'AVFoundation', 'UIKit', 'SystemConfiguration', 'MobileCoreServices', 'WebKit', 'CoreTelephony', 'CoreText', 'CoreMedia', 'ImageIO', 'CoreMotion', 'AudioToolbox', 'Photos', 'AssetsLibrary', 'Accelerate'
    s.libraries = 'c++', 'z','sqlite3.0','xml2','resolv'
    s.resources  = ['**/Resources/QYResource.bundle', '**/Resources/QYLanguage.bundle', '**/Resources/QYCustomResource.bundle']
    s.dependency 'QY_RENAME_NIMSDK', '8.9.117.4'
    s.requires_arc = true
    s.post_install do |installer|
    installer.pods_project.targets.each do |target|
      if target.name == 'QY_iOS_SDK_Test' && target.version == '8.10.4'
        puts "\n[!] 严重警告: QY_iOS_SDK_Test 8.10.4 已废弃".red
        puts "    原因: 存在严重问题 ".yellow
        puts "    解决方案: 升级到 8.10.5+ \n".green
      end
    end
  end
end
