Pod::Spec.new do |s|
  s.name             = 'RaIOSdk'
  s.version          = '0.0.4'
  s.summary          = 'RaIOSdk - iOS IoT Integration SDK'
  s.description      = <<-DESC
    RaIOSdk provides authentication and IoT device control.
  DESC

  s.homepage         = 'https://github.com/docongkien/RaIOSdk'
  s.license          = { :type => 'Proprietary', :text => 'Copyright (c) 2026 docongkien. All rights reserved.' }
  s.author           = { 'docongkien' => 'docongkien.dev@gmail.com' }

  # Binary distribution - NO source code
  s.source           = {
    :http => "https://github.com/docongkien/RaIOSdk/releases/download/#{s.version}/RaIOSdk-#{s.version}.xcframework.zip"
  }

  s.platform         = :ios, '15.0'
  s.swift_version    = '5.9'

  s.vendored_frameworks = 'RaIOSdk.xcframework'

  s.frameworks       = 'Foundation', 'CoreBluetooth'

  # Fix simulator architecture trên Mac M-series
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => ''
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => ''
  }
end
