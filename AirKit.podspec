#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name = "AirKit"
  spec.version = "0.8.0"
  spec.summary = "Many extensions to speed up your coding time!"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description = <<-DESC
  This is sugar framework that contains many different extensions for native Swift and iOS frameworks
                   DESC

  spec.homepage = "https://github.com/yurii-lysytsia/AirKit"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author = { "Yurii Lysytsia" => "developer.yurii.lysytsia@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  spec.ios.deployment_target = "12.0"
  spec.swift_versions = '5.7'
  
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  spec.source = { :git => "https://github.com/yurii-lysytsia/AirKit.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.prefix_header_file = false

  spec.default_subspecs = "Core", "CoreUI", "Other"

  # ――― Source Code (Core) ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.subspec "Swift" do |subspec|
    subspec.source_files = "AirKit/Swift/**/*.swift"
  end

  spec.subspec "Foundation" do |subspec|
    subspec.dependency "AirKit/Swift"
    subspec.source_files = "AirKit/Foundation/**/*.swift"
  end

  spec.subspec "Combine" do |subspec|
    subspec.source_files = "AirKit/Combine/**/*.swift"
  end

  spec.subspec 'Core' do |subspec|
    subspec.dependency 'AirKit/Foundation'
    subspec.dependency 'AirKit/Combine'
  end

  # ――― Source Code (CoreUI) ――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  spec.subspec "QuartzCore" do |subspec|
    subspec.dependency "AirKit/Swift"
    subspec.source_files = "AirKit/QuartzCore/**/*.swift"
  end

  spec.subspec "CoreImage" do |subspec|
    subspec.source_files = "AirKit/CoreImage/**/*.swift"
  end
  
  spec.subspec "UIKit" do |subspec|
    subspec.source_files = "AirKit/UIKit/**/*.swift"
  end

  spec.subspec "WebKit" do |subspec|
    subspec.source_files = "AirKit/WebKit/**/*.swift"
  end
  
  spec.subspec 'CoreUI' do |subspec|
    subspec.dependency 'AirKit/QuartzCore'
    subspec.dependency 'AirKit/CoreImage'
    subspec.dependency 'AirKit/UIKit'
    subspec.dependency 'AirKit/WebKit'
  end

  # ――― Source Code (Other) ―――――――――――――――――――――――――――――――――――――――――――――――――――――- #

  spec.subspec "CoreLocation" do |subspec|
    subspec.source_files = "AirKit/CoreLocation/**/*.swift"
  end

  spec.subspec "MapKit" do |subspec|
    subspec.source_files = "AirKit/MapKit/**/*.swift"
  end

  spec.subspec "LocalAuthentication" do |subspec|
    subspec.source_files = "AirKit/LocalAuthentication/**/*.swift"
  end

  spec.subspec 'Other' do |subspec|
    subspec.dependency 'AirKit/CoreLocation'
    subspec.dependency 'AirKit/MapKit'
    subspec.dependency 'AirKit/LocalAuthentication'
  end
end
