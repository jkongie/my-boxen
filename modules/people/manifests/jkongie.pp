class people::jkongie {

  # Applications
  include vlc
  include adium
  include divvy
  include spotify
  include astrill	
  include sublime_text_2
  include alfred
  include onepassword

  # OSX config
  include osx::dock::autohide
  include osx::dock::clear_dock
  
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library

  include osx::disable_app_quarantine
  include osx::no_network_dsstores

  class { 'osx::global::key_repeat_delay':
    delay => 35
  }

  class { 'osx::global::key_repeat_rate':
    rate => 0
  }

  # Development
  include gitx::dev
}
