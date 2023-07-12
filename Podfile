platform :ios, '12.0'

def use_react_native! (options={})
  
  # The prefix to the react-native
  # prefix = options[:path] ||= "./Rewards/node_modules/react-native"
  
  # Include Fabric dependencies
  fabric_enabled = options[:fabric_enabled] ||= false
  
  # Include DevSupport dependency
  production = options[:production] ||= false
  
  # The Pods which should be included in all projects
  # pod 'FBLazyVector', :path => "#{prefix}/Libraries/FBLazyVector"
  # pod 'FBReactNativeSpec', :path => "#{prefix}/Libraries/FBReactNativeSpec"
  # pod 'RCTRequired', :path => "#{prefix}/Libraries/RCTRequired"
  # pod 'RCTTypeSafety', :path => "#{prefix}/Libraries/TypeSafety"
  # pod 'React', :path => "#{prefix}/"
  # pod 'React-Core', :path => "#{prefix}/"
  # pod 'React-CoreModules', :path => "#{prefix}/React/CoreModules"
  # pod 'React-RCTActionSheet', :path => "#{prefix}/Libraries/ActionSheetIOS"
  # pod 'React-RCTAnimation', :path => "#{prefix}/Libraries/NativeAnimation"
  # pod 'React-RCTBlob', :path => "#{prefix}/Libraries/Blob"
  # pod 'React-RCTImage', :path => "#{prefix}/Libraries/Image"
  # pod 'React-RCTLinking', :path => "#{prefix}/Libraries/LinkingIOS"
  # pod 'React-RCTNetwork', :path => "#{prefix}/Libraries/Network"
  # pod 'React-RCTSettings', :path => "#{prefix}/Libraries/Settings"
  # pod 'React-RCTText', :path => "#{prefix}/Libraries/Text"
  # pod 'React-RCTVibration', :path => "#{prefix}/Libraries/Vibration"
  # pod 'React-Core/RCTWebSocket', :path => "#{prefix}/"
  
  unless production
    # pod 'React-Core/DevSupport', :path => "#{prefix}/"
  end
  
  # pod 'React-cxxreact', :path => "#{prefix}/ReactCommon/cxxreact"
  # pod 'React-jsi', :path => "#{prefix}/ReactCommon/jsi"
  # pod 'React-jsiexecutor', :path => "#{prefix}/ReactCommon/jsiexecutor"
  # pod 'React-jsinspector', :path => "#{prefix}/ReactCommon/jsinspector"
  # pod 'React-callinvoker', :path => "#{prefix}/ReactCommon/callinvoker"
  # pod 'ReactCommon/turbomodule/core', :path => "#{prefix}/ReactCommon"
  # pod 'Yoga', :path => "#{prefix}/ReactCommon/yoga", :modular_headers => true
  
  # pod 'DoubleConversion', :podspec => "#{prefix}/third-party-podspecs/DoubleConversion.podspec"
  # pod 'glog', :podspec => "#{prefix}/third-party-podspecs/glog.podspec"
  # pod 'Folly', :podspec => "#{prefix}/third-party-podspecs/Folly.podspec"
  
  if fabric_enabled
    # pod 'React-Fabric', :path => "#{prefix}/ReactCommon"
    # pod 'React-graphics', :path => "#{prefix}/ReactCommon/fabric/graphics"
    # pod 'React-jsi/Fabric', :path => "#{prefix}/ReactCommon/jsi"
    # pod 'React-RCTFabric', :path => "#{prefix}/React"
    # pod 'Folly/Fabric', :podspec => "#{prefix}/third-party-podspecs/Folly.podspec"
  end
  
  #Thrid party Dependency
  
  # pod 'RNGestureHandler', :path => './Rewards/node_modules/react-native-gesture-handler'
  # pod 'react-native-netinfo', :path => './Rewards/node_modules/@react-native-community/netinfo'
  # pod 'react-native-maps', :path => './Rewards/node_modules/react-native-maps'
  # pod 'RNReanimated', :path => './Rewards/node_modules/react-native-reanimated'
  # pod 'react-native-safe-area-context', :path => './Rewards/node_modules/react-native-safe-area-context'
  # pod 'RNScreens', :path => './Rewards/node_modules/react-native-screens'
  # pod 'react-native-geolocation', :path => './Rewards/node_modules/@react-native-community/geolocation'
  # pod 'RNCMaskedView', :path => './Rewards/node_modules/@react-native-community/masked-view'
  
end

workspace 'Test.xcworkspace'
def shared_pods
  pod 'RxSwift', '5.1.0'
  pod 'RxCocoa', '5.1.0'
  pod 'RxDataSources', '4.0.1'
  pod 'Stripe', '22.8.4'
  
  pod 'Firebase/Core', '7.1.0'
  pod 'FirebasePerformance', '~> 7.3.0'
  pod 'FirebaseRemoteConfig'
  pod 'GoogleUtilities'
  pod 'Firebase/Crashlytics', '7.1.0'
  pod 'Firebase/Messaging', '7.1.0'
  pod 'GooglePlaces', '~> 3.0.0'
  pod 'GooglePlacePicker', '~> 3.0.0'
  pod 'GoogleMaps', '~> 3.0.0'
  pod 'AMPopTip', '4.6.1'
  pod 'MJRefresh', '3.2.0'
  pod 'CryptoSwift', '1.3.2'
  pod 'R.swift', '5.1.0'
  pod 'MaterialComponents', '106.0.0'
  pod 'SwiftyRSA', '1.5.0'
  pod 'lottie-ios', '3.1.8'
  pod 'FSPagerView'
  pod 'TOCropViewController'
  pod 'Alamofire', '~> 5.6'
  pod 'AlamofireImage', '~> 4.2'
  pod 'Kingfisher', '5.13.2'


  pod 'UPCarouselFlowLayout', '~> 1.1.0'
  pod 'SkyFloatingLabelTextField', '~> 3.0'
  pod 'XLPagerTabStrip', '~> 9.0'
  pod 'MBProgressHUD', '~> 1.1.0'
  pod 'SDWebImage', '~> 5.14.0'
  
  use_react_native!
  
end

target 'Test' do
  
  use_frameworks!
  inhibit_all_warnings!
  shared_pods
  
  
end

post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings["DEVELOPMENT_TEAM"] = "P6VCGSUT94"
            config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
         end
    end
  end
end
