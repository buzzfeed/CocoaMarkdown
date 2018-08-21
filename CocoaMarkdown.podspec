Pod::Spec.new do |s|

  s.name = 'CocoaMarkdown'
  s.version = '1.0'
  s.summary = 'Markdown parsing and rendering for iOS and OS X'
  s.description = "CocoaMarkdown aims to solve two primary problems better than existing libraries:
More flexibility. CocoaMarkdown allows you to define custom parsing hooks or even traverse the Markdown AST using the low-level API.
Efficient NSAttributedString creation for easy rendering on iOS and OS X. Most existing libraries just generate HTML from the Markdown, which is not a convenient representation to work with in native apps."

  s.homepage = 'https://github.com/indragiek/CocoaMarkdown'
  s.license = 'MIT'

  s.author = "Indragie Karunaratne"
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'

  s.source = { :git => 'https://github.com/buzzfeed/CocoaMarkdown.git', :submodules => true }
  s.source_files = 'CocoaMarkdown/**/*.{h,m}', 'External/cmark/src/*.{h,c}', 'External/Ono/Ono/*.{h,m}'
  s.preserve_paths = 'External/cmark/src/*.{inc}'
  s.private_header_files = 'CocoaMarkdown/*_Private.h', 'External/Ono/Ono/*.h', 'External/cmark/src/*.h'
  s.ios.framework = 'UIKit'
  s.osx.framework = 'Cocoa'
  s.library = 'xml2'
  s.requires_arc = true

  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) HAVE_C99_SNPRINTF',
    'HEADER_SEARCH_PATHS' => '$(inherited) /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include $(SDKROOT)/usr/include/libxml2 $(SRCROOT)/CocoaMarkdown/Configuration',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/External/cmark/src'
  }

end
