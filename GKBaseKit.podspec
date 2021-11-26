Pod::Spec.new do |s|

  s.name                  = 'GKBaseKit'
  s.version               = '2.0.0'
  s.summary               = 'GKBaseKit framework.'
  s.description           = <<-DESC
                            * GKBaseKit framework
                              DESC
  s.homepage              = 'https://github.com/gligorkot/GKBaseKit'
  s.license               = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author                = { 'Gligor Kotushevski' => 'gligorkot@gmail.com' }
  s.social_media_url      = 'https://twitter.com/gligor_nz'
  s.platform              = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source                = { :git => 'https://github.com/gligorkot/GKBaseKit.git', :tag => s.version.to_s }

  s.source_files          = 'Sources/GKBaseKit/**/*'
  s.pod_target_xcconfig   = { 'SWIFT_VERSION' => '5.5' }

  s.requires_arc          = true
  s.swift_versions        = ['4.0', '4.1', '4.2', '5.0', '5.1', '5.2', '5.3', '5.4', '5.5']

end
