require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RCTQRCodeLocalImage"
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platforms    = { :ios => "9.0", :tvos => "10.0" }

  s.module_name  = 'RCTQRCodeLocalImage'

  s.source       = { :git => "https://github.com/hieuluis96/react-native-qrcode-local-image.git", :tag => "#{s.version}" }
  s.source_files  = "./ios/**/*.{h,m}"
  s.dependency 'React'
end