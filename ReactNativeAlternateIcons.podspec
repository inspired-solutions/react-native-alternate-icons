require "json"
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name          = 'ReactNativeAlternateIcons'
  s.version       = package['version']
  s.summary       = package['description']
  s.author        = package['author']
  s.license       = package['license']
  s.homepage      = package['homepage']
  s.source        = { :git => 'https://github.com/kamsteegsoftware/react-native-alternate-icons.git' }
  s.platform      = :ios, '8.0'
  s.source_files  = "*.{h,m}"

  s.dependency "React"
end