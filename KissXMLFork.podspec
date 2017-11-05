Pod::Spec.new do |s|
  s.name         = 'KissXMLFork'
  s.version      = '5.1.1'
  s.license      = 'MIT'
  s.summary      = 'A replacement for Cocoa\'s NSXML cluster of classes. Based on libxml.'
  s.homepage     = 'https://github.com/robbiehanson/KissXML'
  s.author       = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.source       = { :git => 'https://github.com/OliverLetterer/KissXML.git', :tag => s.version.to_s }
  s.library      = 'xml2'
  s.requires_arc = true
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }

  s.source_files = 'KissXML/**/*.{h,m}'
  s.public_header_files = "KissXML/*.h", "KissXML/Additions/*.h"
  s.private_header_files = 'KissXML/Private/*.h', 'KissXML/Categories/*.h'
end
