Pod::Spec.new do |s|
  s.name         = "YYButton"
  s.version      = "0.0.7"
  s.summary      = "custom button."
  s.homepage     = "https://github.com/yscMichael/CustomizeButton"
  s.license      = "MIT"
  s.author       = {"杨世川" => "yscbbc@gmail.com"}
  s.platform     = :ios, "8.0"
  s.source       = {:git => "https://github.com/yscMichael/CustomizeButton.git", :tag => s.version}
  s.source_files  = "YYButton", "YYButton/YYButton/YYButton.{h,m}"
  s.requires_arc = true
end
