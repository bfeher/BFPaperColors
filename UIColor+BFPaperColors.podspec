
Pod::Spec.new do |s|
  s.name         = "UIColor+BFPaperColors"
  s.version      = "1.3.1"
  s.summary      = "A category for UIColor that adds flat UI color methods inspired by Google's Material Design, Paper."
  s.homepage     = "https://github.com/bfeher/BFPaperColors"
  s.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author       = { "Bence Feher" => "ben.feher@gmail.com" }
  s.source       = { :git => "https://github.com/bfeher/BFPaperColors.git", :tag => "1.3.1" }
  s.platform     = :ios, '7.0'
 
  
  s.source_files = 'UIColor+BFPaperColors', 'UIColor+BFPaperColors/**/*.{h,m}'
  s.public_header_files = 'UIColor+BFPaperColors/**/*.h'
  s.requires_arc = true

end
