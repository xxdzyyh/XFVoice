Pod::Spec.new do |s|


  s.name         = "XFVoice"
  s.version      = "0.0.1"
  s.summary      = "科大讯飞语音识别"

  s.description  = <<-DESC
                   XF 科大讯飞 语音识别
                   DESC

  s.homepage     = "http://www.baidu.com"

  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "xxdzyyh" => "xxdzyyh@163.com" }
  
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://code.csdn.net/u011367651/xfvoice.git" }

  s.vendored_frameworks = "**/iflyMSC.framework"
  s.frameworks = "AVFoundation", "SystemConfiguration", "Foundation", "CoreTelephoney"

  s.library = "z"

end
