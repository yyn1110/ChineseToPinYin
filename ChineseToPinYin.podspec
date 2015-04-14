

Pod::Spec.new do |s|


  s.name         = "ChineseToPinYin"
  s.version      = "0.0.1"
  s.summary      = "汉字转拼音, 繁体与简体互相转换  代码源自网络"

  s.homepage     = "https://github.com/yyn1110/ChineseToPinYin"
  
  s.license      = "MIT"
  
  s.source       = { :git => "https://github.com/yyn1110/ChineseToPinYin.git", :tag => s.version  }

  s.author             = { "yangyanan" => "yyn1110@163.com" }
  
  s.platform     = :ios, "5.0"

  s.ios.deployment_target = "5.0"
  
  s.source_files  = "*.{h,m}"

  s.frameworks = "Foundation"

  s.requires_arc = true
end
