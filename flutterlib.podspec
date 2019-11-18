Pod::Spec.new do |s|
  s.name             = 'flutter-lib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of flutter-lib.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/caodingpeng/FlutterAssets'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'git@github.com:caodingpeng/FlutterAssets.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.static_framework = true
  # s.source_files = 'flutter-lib/Classes/**/*'
  p = Dir::open("ios_frameworks")
  arr = Array.new
  p.each do |f|
    if f == '.' || f == '..'
    else
        arr.push('ios_frameworks/'+f)
    end
  end

  s.ios.vendored_frameworks = arr
end
