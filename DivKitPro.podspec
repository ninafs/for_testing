Pod::Spec.new do |s|
  s.name             = 'DivKitPro'
  s.version          = '2.0.0'
  s.summary          = 'DivKitPro for iOS'

  s.description      = <<-DESC
  DivKitPro is a framework for displaying screens according to certain rules.
  DESC

  s.homepage         = 'https://github.com/divkit/divkitpro'
  s.license          = { :type => 'MIT', :text => 'Copyright (c) 2023 YANDEX LLC'  }
  s.authors          = 'YANDEX LLC'

  s.source           = {
      :git => 'https://github.com/divkit/divkit-ios.git'
  }
  s.source           = {
    :http => 'https://div-storage.s3.yandex.net/releases/DivKitPro-1.1.0.tar.gz'
  }

  s.cocoapods_version = '>= 1.10.0'
  s.swift_version     = '5.3'

  s.ios.deployment_target  = '11.0'

  s.dependency 'DivKit', '~> 27.0.0'
  s.dependency 'DivKitExtensions', '~> 27.0.0'
  s.dependency 'lottie-ios', '~> 4.2.0'

  s.vendored_frameworks = "Frameworks/DivKitPro.xcframework"

end
