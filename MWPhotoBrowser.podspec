Pod::Spec.new do |s|
  s.name     = 'MWPhotoBrowser'
  s.version  = '1.1.5'
  s.license  = 'MIT'
  s.summary  = 'A simple iOS photo browser.'
  s.homepage = 'https://github.com/mwaterfall/MWPhotoBrowser'
  s.author   = { 'Michael Waterfall' => 'mw@d3i.com' }
  s.source   = { :git => 'https://github.com/xmkevin/MWPhotoBrowser.git', :tag => '1.1.5' }
  s.platform = :ios, '6.0'
  
  s.subspec 'ARC' do |arc|
    arc.source_files = 'MWPhotoBrowser/Classes/*.{h,m}'
    arc.requires_arc = true
    arc.prefix_header_contents = '#import "MWPreprocessor.h"'
  end
  
  s.resources = "MWPhotoBrowser/MWPhotoBrowser.bundle"

  s.frameworks = 'MessageUI', 'ImageIO', 'QuartzCore', 'AssetsLibrary'

  s.dependency 'SDWebImage'
  s.dependency 'MBProgressHUD'
  s.dependency 'DACircularProgress'
end
