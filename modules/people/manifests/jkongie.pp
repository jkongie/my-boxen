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

  git::config::global {
    'alias.st':    value => 'status';
    'alias.ci':    value => 'commit';
    'alias.b':     value => 'branch';
    'alias.co':    value => 'checkout';
    'alias.cob':   value => 'checkout -b';
    'alias.pom':   value => 'push origin master';
    'alias.rom':   value => 'rebase origin/master';
    'alias.amend': value => 'commit --amend';
    'alias.di':    value => 'diff';
    'alias.dc':    value => 'diff --cached';
    'alias.lp':    value => 'log -p';
    'alias.lg':    value => 'log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit';
    'color.ui':    value => 'true';
    'user.name':   value => 'James Kong';
    'user.email':  value => 'jkongie@gmail.com';
  }
}
