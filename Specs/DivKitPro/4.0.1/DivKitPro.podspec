Pod::Spec.new do |s|
  s.name             = 'DivKitPro'
  s.version          = '4.0.1'
  s.summary          = 'DivKitPro for iOS'

  s.description      = <<-DESC
  DivKitPro is a framework for displaying screens according to certain rules.
  DESC

  s.homepage         = 'https://github.com/divkit/divkitpro'
  s.license          = { :type => 'MIT', :text => 'Copyright (c) 2023 YANDEX LLC'  }
  s.authors          = 'YANDEX LLC'

  s.source           = {
      :http => 'https://s3.mds.yandex.net/div-internal/divpro-sources/DivKitPro-2.0.0.zip'
  }

  s.cocoapods_version = '>= 1.10.0'
  s.swift_version     = '5.3'
  s.requires_arc = true
  s.prefix_header_file = false
  s.platforms = { :ios => '13.7' }

  s.dependency 'DivKit', '~> 27'
  s.dependency 'DivKitExtensions', '~> 27'
  s.dependency 'lottie-ios', '~> 4'

  s.source_files = [
    'DivKitPro/**/*'
]

end
