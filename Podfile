# Uncomment the next line to define a global platform for your project
 platform :ios, '12.0'

target 'iChatFirebase' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for iChatFirebase
pod 'Firebase/Auth'
pod 'Firebase/Firestore'
pod 'Firebase/Storage'
pod 'MaterialComponents/BottomSheet'
pod 'MaterialComponents/TextFields'

end
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      end
    end
  end