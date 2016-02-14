
Pod::Spec.new do |s|
  s.name             = "LPPriceAttributedStringLabel"
  s.version          = "1.0.0"
  s.summary          = "price number with attributedString format "
  s.description      = <<-DESC
                       a price number with attributedString format util
                       DESC
  s.homepage         = "https://github.com/litt1e-p/LPPriceAttributedStringLabel"
  s.license          = { :type => 'MIT' }
  s.author           = { "litt1e-p" => "litt1e.p4ul@gmail.com" }
  s.source           = { :git => "https://github.com/litt1e-p/LPPriceAttributedStringLabel.git", :tag => '1.0.0' }
  s.platform = :ios, '6.0'
  s.requires_arc = true
  s.source_files = 'LPPriceAttributedStringLabel/*'
  s.frameworks = 'Foundation', 'UIKit'
end
