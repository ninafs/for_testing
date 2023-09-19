Pod::Spec.new do |s|
  s.name             = 'DivKitProFlex'
  s.version          = '5.3.0'
  s.summary          = 'DivKitProFlex for iOS'

  s.description      = <<-DESC
  DivKitProFlex is a framework for displaying screens according to certain rules.
  DESC

  s.homepage         = 'https://github.com/divkit/divkitpro'
  s.license          = { :type => 'MIT', :text => 'Copyright (c) 2023 YANDEX LLC'  }
  s.authors          = 'YANDEX LLC'

  s.source           = { :git => 'https://github.com/ninafs/for_testing', :tag => s.version.to_s }

  s.swift_version     = '5.7'
  s.requires_arc = true
  s.prefix_header_file = false
  s.platforms = { :ios => '13.0' }

  s.dependency 'DivKitPro', s.version.to_s
  s.dependency "FlexSDK", '>= 0.14.100', '< 0.14.994'
  s.dependency 'FeedSDK', '>= 0.14.100', '< 0.14.994'

  s.source_files = [
    'DivKitProFlex/**/*'
  ]

end