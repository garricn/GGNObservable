Pod::Spec.new do |s|
  s.name             = 'GGNObservable'
  s.version          = '0.1.0'
  s.summary          = 'A short description of GGNObservable.'
  s.homepage         = 'https://github.com/garricn/GGNObservable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Garric Nahapetian' => 'garricn@icloud.com' }
  s.source           = { :git => 'https://github.com/garricn/GGNObservable.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'GGNObservable/Classes/**/*'
end
