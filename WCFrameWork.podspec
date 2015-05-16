
 Pod::Spec.new do |s|
  s.name         = “WCFrameWork”
  s.version      = "1.0.0"
  s.summary      = "Simple QRCode detector and generator in Swift"
  s.homepage     = "https://github.com/wangchong321/WCFrameWork.git"
  s.license      = "MIT"
  s.author             = { “Wang Chong” => “912321420@qq.com” }
  s.platform     = :ios, “5.0”
  s.source       = { :git => "https://github.com/wangchong321/WCFrameWork.git", :tag => s.version }
  s.source_files  = “FrameWork/Source/*.{h,m}"
  s.requires_arc = true
end