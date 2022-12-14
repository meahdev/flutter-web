Pod::Spec.new do |s|
    s.name             = 'window_size'
    s.version          = '0.0.1'
    s.summary          = 'Allows resizing and repositioning the window containing Flutter.'
    s.description      = <<-DESC
  Allows resizing and repositioning the window containing Flutter.
                         DESC
    s.license          = { :file => '../LICENSE' }
    s.source           = { :path => '.' }
    s.source_files     = 'Classes/**/*'
    s.dependency 'FlutterMacOS'
  
    s.platform = :osx
    s.osx.deployment_target = '10.11'
  end
  
  