Pod::Spec.new do |spec|
  spec.name         = 'TESTMYFIRSTAPP'
  spec.version      = '1.5'
  spec.authors      = { 
    'Anand Kumar' => 'anandsion111@gmail.com',
    'Another Anand Kumar' => 'anandsion111@gmail.com'
  }
  spec.license      = { 
    :type => 'MIT',
    :file => 'LICENSE' 
  }
  spec.homepage     = 'https://github.com/anandsion111/TESTMYFIRSTAPP'
  spec.source       = { 
    :git => 'https://github.com/anandsion111/TESTMYFIRSTAPP', 
    :branch => 'master',
    :tag => spec.version.to_s  
  }
  spec.summary      = 'TESTMYFIRSTAPP'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = '14.4'
  spec.dependency 'FirebaseMessaging'
  
  
 
 end
