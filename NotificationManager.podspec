Pod::Spec.new do |s|
  s.name             = "NotificationManager"
  s.version          = "0.2.0"
  s.summary          = "Make NSNotificationCenter suck less."

  s.description      = <<-DESC
    NSNotificationCenter wrapper block support and automatic unregistering
                       DESC

  s.homepage         = "https://github.com/timbodeit/NotificationManager"
  s.license          = 'MIT'
  s.author           = { "Tim Bodeit" => "tim@bodeit.com" }
  s.source           = { :git => "https://github.com/timbodeit/NotificationManager.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
