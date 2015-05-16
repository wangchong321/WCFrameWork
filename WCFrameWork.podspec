Pod::Spec.new do |s|
  s.name         = "WCFrameWork"
  s.version      = "1.0.1"
  s.summary      = "WC private framework"
  s.homepage     = "https://github.com/wangchong321/WCFrameWork"
  s.license      = "MIT"
  s.author             = { "Chong Wang" => "912321420@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/wangchong321/WCFrameWork.git", :tag => s.version }
  s.source_files  = "WCFrameWork/Source/*.*"
end
