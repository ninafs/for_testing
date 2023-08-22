Pod::Spec.new do |s|
  s.name             = 'DivKitProLottie'
  s.version          = '5.1.0'
  s.summary          = 'DivKitProLottie for iOS'

  s.description      = <<-DESC
  DivKitProLottie is a framework for displaying screens with animation according to certain rules.
  DESC

  s.homepage         = 'https://github.com/divkit/divkitpro'
  s.license          = { :type => 'MIT', :text => 'Copyright (c) 2023 YANDEX LLC'  }
  s.authors          = 'YANDEX LLC'

  s.source           = { :git => 'https://github.com/ninafs/for_testing', :tag => s.version.to_s }

  s.cocoapods_version = '>= 1.10.0'
  s.swift_version     = '5.3'
  s.requires_arc = true
  s.prefix_header_file = false
  s.platforms = { :ios => '11.0' }

  s.dependency 'DivKit', '~> 27'
  s.dependency 'DivKitExtensions', '~> 27'
  s.dependency 'lottie-ios', '~> 4'

  s.source_files = [
    'Sources/**/*'
  ]

end