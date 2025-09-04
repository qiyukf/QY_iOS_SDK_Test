Pod::Spec.new do |s|
  s.name     = 'QY_iOS_SDK_Test'
  s.version  = '8.10.5'
  s.license  = {
    :type => "Copyright",
    :text => "Copyright 2021 Netease"
  }
  s.summary  = '网易七鱼客服访客端 iOS SDK'
  s.homepage = 'https://qiyukf.com'
  s.author   = { 'qiyukf' => 'yunshangfu@126.com' }
  s.source   = {
    :git => 'https://github.com/qiyukf/QY_iOS_SDK_Test.git',
    :tag => s.version.to_s
  }
  s.platform = :ios, '9.0'
  
  s.vendored_frameworks = '**/QYSDK_ReName.xcframework'
  s.frameworks = 'AVFoundation', 'UIKit', 'SystemConfiguration', 'MobileCoreServices',
                 'WebKit', 'CoreTelephony', 'CoreText', 'CoreMedia', 'ImageIO',
                 'CoreMotion', 'AudioToolbox', 'Photos', 'AssetsLibrary', 'Accelerate'
  
  s.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'  # 修正 sqlite3 名称
  
  s.resources = [
    '**/Resources/QYResource.bundle',
    '**/Resources/QYLanguage.bundle',
    '**/Resources/QYCustomResource.bundle'
  ]
  
  s.dependency 'QY_RENAME_NIMSDK', '8.9.117.4'
  s.requires_arc = true
  
  # 修复后的 post_install hook
  s.post_install do |installer|
    installer.pods_project.targets.each do |target|
      # 检查目标名称而不是版本号
      if target.name == 'QY_iOS_SDK_Test'
        # 使用 Pod::UI 安全输出（可选）
        puts "\n[!] 注意: QY_iOS_SDK_Test 已安装"
        
        # 添加废弃警告（需要运行时逻辑）
        # 实际版本检查应在代码中实现
        puts "    建议: 请确保不使用已废弃版本"
      end
    end
  end
end
