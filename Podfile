 platform :ios, '9.0'
 use_frameworks!

target 'TestApplication' do

pod 'IQKeyboardManagerSwift'
pod 'Alamofire’
pod 'SwiftyJSON'
 
end

post_install do |installer|
	installer.pods_project.targets.each do |target|
		target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
		end
	end
end