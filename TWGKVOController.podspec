Pod::Spec.new do |s|
  s.name             = "TWGKVOController"
  s.version          = "0.1.1"
  s.summary          = "Helper for working with Key-Value Observing"
  s.description      = <<-DESC
                        TWGKVOController is a helper for working with Key-Value Observing.
                       DESC
  s.homepage         = "https://github.com/twg/TWGKVOController"
  s.license          = 'MIT'
  s.author           = { "The Working Group" => "mobile@twg.ca" }
  s.source           = { :git => "https://github.com/twg/TWGKVOController.git", :tag => s.version.to_s }
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.source_files     = 'Pod/Classes/**/*'
end
